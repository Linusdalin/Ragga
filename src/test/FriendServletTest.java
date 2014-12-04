package test;

import backOffice.api.FriendServlet;
import backOffice.system.RaggaBO;
import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import crm.CommunityFriendTable;
import crm.CommunityMember;
import crm.CommunityMemberTable;
import log.PukkaLogger;
import net.sf.json.JSONObject;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.condition.ColumnFilter;
import pukkaBO.condition.LookupItem;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

/**
 *
 */


public class FriendServletTest {

    /******************************************************************
     *
     *      //TODO: Use mockito to mock the httpservlet request/response
     *
     */

    private static LocalServiceTestHelper helper;
    private static BackOfficeInterface bo = new RaggaBO();
    private static HttpServletRequest request;
    private static HttpServletResponse response;


    @AfterClass
    public static void tearDown() {

        helper.tearDown();
    }


    @BeforeClass
    public static void preAmble(){

        helper = new LocalServiceTestHelper(new LocalDatastoreServiceTestConfig());
        helper.setUp();
        bo.createDb();
        bo.populateValues(true);

        PukkaLogger.setLogLevel(PukkaLogger.Level.DEBUG);


    }




    @Test
    public void becomeFriends() throws Exception {

       try{
           request = mock(HttpServletRequest.class);
           response = mock(HttpServletResponse.class);

           CommunityMember kalle = new CommunityMember(new LookupItem().addFilter(new ColumnFilter(CommunityMemberTable.Columns.Username.name(), "Kalle")));
           CommunityMember kajsa = new CommunityMember(new LookupItem().addFilter(new ColumnFilter(CommunityMemberTable.Columns.Username.name(), "Kajsa")));

           assertThat("Prerequisite test user exists", kalle.exists(), is(true));
           assertThat("Prerequisite test user exists", kajsa.exists(), is(true));


           MockWriter mockWriter = new MockWriter();

           CommunityFriendTable table = new CommunityFriendTable();
           int friendsCount = table.getCount();
           System.out.println("Friends count before = " + friendsCount);


           when(request.getParameter("member")).thenReturn(kalle.getKey().toString());
           when(request.getParameter("friend")).thenReturn(kajsa.getKey().toString());

           when(response.getWriter()).thenReturn(mockWriter.getWriter());

           new FriendServlet().doPost(request, response);


           String output = mockWriter.getOutput();
           PukkaLogger.log(PukkaLogger.Level.INFO, "JSON: " + output);

           JSONObject res = new JSONObject(output);
           assertThat("Got OK", res.getString("Friend"), is("OK"));

           CommunityFriendTable tableAfter = new CommunityFriendTable();
           int friendCountAfter = tableAfter.getCount();
           assertThat("Expecting one more after", friendCountAfter, is(friendsCount + 1));


       }catch(NullPointerException e){

           e.printStackTrace();
           assertTrue(false);
       }
   }



}

