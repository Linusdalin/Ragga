package test;

import backOffice.api.MemberServlet;
import backOffice.system.RaggaBO;
import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import crm.CommunityMemberTable;
import log.PukkaLogger;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.backOffice.BackOfficeInterface;

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


public class UserServletTest {

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
    public void registerUser() throws Exception {

       try{
           request = mock(HttpServletRequest.class);
           response = mock(HttpServletResponse.class);

           MockWriter mockWriter = new MockWriter();

           CommunityMemberTable table = new CommunityMemberTable();
           int memberCount = table.getCount();
           System.out.println("Member count before = " + memberCount);


           when(request.getParameter("Username")).thenReturn("TestUser");
           when(request.getParameter("First")).thenReturn("Tester");
           when(request.getParameter("Last")).thenReturn("Testsson");
           when(request.getParameter("Email")).thenReturn("testis@dev.null");
           when(request.getParameter("ExternalId")).thenReturn("xxxxxx");
           when(request.getParameter("Sex")).thenReturn("male");
           when(request.getParameter("Tag")).thenReturn("the campaign");

           when(response.getWriter()).thenReturn(mockWriter.getWriter());

           new MemberServlet().doPost(request, response);


           String output = mockWriter.getOutput();
           PukkaLogger.log(PukkaLogger.Level.INFO, "JSON: " + output);

           CommunityMemberTable tableAfter = new CommunityMemberTable();
           int memberCountAfter = tableAfter.getCount();
            assertThat("Expecting one more after", memberCountAfter, is(memberCount + 1));

           // TODO: Check data in the database


       }catch(NullPointerException e){

           e.printStackTrace();
           assertTrue(false);
       }
   }



}

