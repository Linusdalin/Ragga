package test;

import backOffice.api.MessageServlet;
import backOffice.system.RaggaBO;
import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import crm.CommunityMember;
import crm.CommunityMemberTable;
import crm.CommunityMessageTable;
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


public class MessageServletTest {

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
    public void sendMessage() throws Exception {

       try{
           request = mock(HttpServletRequest.class);
           response = mock(HttpServletResponse.class);

           CommunityMember kalle = new CommunityMember(new LookupItem().addFilter(new ColumnFilter(CommunityMemberTable.Columns.Username.name(), "Kalle")));
           CommunityMember kajsa = new CommunityMember(new LookupItem().addFilter(new ColumnFilter(CommunityMemberTable.Columns.Username.name(), "Kajsa")));

           assertThat("Prerequisite test user exists", kalle.exists(), is(true));
           assertThat("Prerequisite test user exists", kajsa.exists(), is(true));


           MockWriter mockWriter = new MockWriter();

           CommunityMessageTable table = new CommunityMessageTable();
           int messageCount = table.getCount();
           System.out.println("Message count before = " + messageCount);


           when(request.getParameter("from")).thenReturn(kalle.getKey().toString());
           when(request.getParameter("to")).thenReturn(kajsa.getKey().toString());
           when(request.getParameter("messageId")).thenReturn("1");
           when(request.getParameter("inReplyTo")).thenReturn(null);
           when(request.getParameter("message")).thenReturn(null);

           when(response.getWriter()).thenReturn(mockWriter.getWriter());

           new MessageServlet().doPost(request, response);


           String output = mockWriter.getOutput();
           PukkaLogger.log(PukkaLogger.Level.INFO, "JSON: " + output);

           JSONObject res = new JSONObject(output);
           assertThat("Got OK", res.getString("Message"), is("OK"));

           CommunityMessageTable tableAfter = new CommunityMessageTable();
           int messageCountAfter = tableAfter.getCount();
           assertThat("Expecting one more after", messageCountAfter, is(messageCount + 1));


       }catch(NullPointerException e){

           e.printStackTrace();
           assertTrue(false);
       }
   }



}

