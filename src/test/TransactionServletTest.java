package test;

import backOffice.api.TransactionServlet;
import backOffice.system.RaggaBO;
import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import crm.CommunityMember;
import crm.CommunityMemberTable;
import crm.CommunityPaymentTable;
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


public class TransactionServletTest {

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
    public void UserPayment() throws Exception {

       try{
           request = mock(HttpServletRequest.class);
           response = mock(HttpServletResponse.class);

           CommunityMember kalle = new CommunityMember(new LookupItem().addFilter(new ColumnFilter(CommunityMemberTable.Columns.Username.name(), "Kalle")));
           assertThat("Prerequisite test user exists", kalle.exists(), is(true));


           MockWriter mockWriter = new MockWriter();

           CommunityPaymentTable table = new CommunityPaymentTable();
           int paymentCount = table.getCount();
           System.out.println("Payment count before = " + paymentCount);


           when(request.getParameter("Member")).thenReturn(kalle.getKey().toString());
           when(request.getParameter("Product")).thenReturn("month subscription");
           when(request.getParameter("Units")).thenReturn("3");
           when(request.getParameter("Validity")).thenReturn("2014-12-12");
           when(request.getParameter("TotalValue")).thenReturn("99");
           when(request.getParameter("ExternalRef")).thenReturn("Pay:1234");

           when(response.getWriter()).thenReturn(mockWriter.getWriter());

           new TransactionServlet().doPost(request, response);


           String output = mockWriter.getOutput();
           PukkaLogger.log(PukkaLogger.Level.INFO, "JSON: " + output);

           JSONObject res = new JSONObject(output);
           assertThat("Got OK", res.getString("Payment"), is("OK"));

           CommunityPaymentTable tableAfter = new CommunityPaymentTable();
           int paymentCountAfter = tableAfter.getCount();
           assertThat("Expecting one more after", paymentCountAfter, is(paymentCount + 1));


       }catch(NullPointerException e){

           e.printStackTrace();
           assertTrue(false);
       }
   }



}

