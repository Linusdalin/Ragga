package test;

import backOffice.api.ContactServlet;
import backOffice.system.RaggaBO;
import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import crm.*;
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


public class ContactServletTest {

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
    public void poke() throws Exception {

       try{
           request = mock(HttpServletRequest.class);
           response = mock(HttpServletResponse.class);

           CommunityMember kalle = new CommunityMember(new LookupItem().addFilter(new ColumnFilter(CommunityMemberTable.Columns.Username.name(), "Kalle")));
           CommunityMember kajsa = new CommunityMember(new LookupItem().addFilter(new ColumnFilter(CommunityMemberTable.Columns.Username.name(), "Kajsa")));

           assertThat("Prerequisite test user exists", kalle.exists(), is(true));
           assertThat("Prerequisite test user exists", kajsa.exists(), is(true));


           MockWriter mockWriter = new MockWriter();

           CommunityContactTable table = new CommunityContactTable();
           int conactCount = table.getCount();
           System.out.println("Contact count before = " + conactCount);


           when(request.getParameter("from")).thenReturn(kalle.getKey().toString());
           when(request.getParameter("to")).thenReturn(kajsa.getKey().toString());
           when(request.getParameter("type")).thenReturn("poke");

           when(response.getWriter()).thenReturn(mockWriter.getWriter());

           new ContactServlet().doPost(request, response);


           String output = mockWriter.getOutput();
           PukkaLogger.log(PukkaLogger.Level.INFO, "JSON: " + output);

           JSONObject res = new JSONObject(output);
           assertThat("Got OK", res.getString("Contact"), is("OK"));

           CommunityContactTable tableAfter = new CommunityContactTable();
           int contactCountAfter = tableAfter.getCount();
           assertThat("Expecting one more after", contactCountAfter, is(conactCount + 1));


       }catch(NullPointerException e){

           e.printStackTrace();
           assertTrue(false);
       }
   }



}

