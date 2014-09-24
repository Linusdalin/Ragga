package unitTest;

import databaseLayer.DBKeyInterface;
import databaseLayer.SQLKey;
import system.backend.RaggaBO;
import system.ExampleList;
import log.PukkaLogger;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.acs.ACS_LoginMethod;
import pukkaBO.acs.ACS_User;
import pukkaBO.acs.AccessControlSystem;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.condition.LookupList;

import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.list.ListInterface;
import pukkaBO.renderer.ListRendererJSStatic;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

/**
 *
 *      Basic tests for a list
 *
 */


public class listTest{

    private static BackOfficeInterface bo;

    @BeforeClass
    public static void preamble(){

        bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

    }

    @Test
    public void testLookupByName(){

        try{

            ListInterface list = bo.getListByName("TestList");
            assertNotNull(list);

            list = bo.getListByName(null);
            assertNull(list);

            list = bo.getListByName("This does not exist");
            assertNull(list);


        } catch (Exception e) {

            e.printStackTrace();
            assertTrue(false);
        }
    }

    @Test
    public void testCreateList(){



        ListInterface list = new ExampleList(bo);

        assertTrue(list.getTitle().equals("Test List Title"));
        assertTrue(list.getDescription().equals("A Test List"));
    }


    @Test
    public void testGetListFromBO(){

        ListInterface list = bo.getListByName("TestList");
        assertTrue(list.getTitle().equals("Test List Title"));
        assertTrue(list.getDescription().equals("A Test List"));
    }


    @Test
    public void testRender(){

        try{

            ListInterface list = new ExampleList(bo);
            ListRendererJSStatic renderer = new ListRendererJSStatic();
            String html = list.getRenderer().getTableContent(list, new LookupList(), "Home", true, bo);
            PukkaLogger.log(PukkaLogger.Level.INFO, " list: " + html);
            assertTrue(html.contains("<table"));
            assertTrue(html.contains("class=\"stdtable\""));
            assertTrue(html.contains("</table>"));

            DBKeyInterface id = new SQLKey(1);

            /*

            html = list.getItemDescription(bo, id, "Home", null);  // Get the first element
            PukkaLogger.log(PukkaLogger.Level.INFO, " itemDescription: " + html);
            assertTrue(html.contains("<div class=\"widgetbox\""));
            assertTrue(html.contains("</div> <!-- widgetgrid -->"));
            assertTrue(html.contains("<iframe "));
              */

            //PukkaLogger.log(PukkaLogger.Level.INFO, "***************Item:\n\n" + html);

        }catch(BackOfficeException e){

            e.logError("");
            assertTrue(false);

        }catch(Exception e){

            e.printStackTrace();
            assertTrue(false);
        }


    }


    @Test
    public void testLink(){

        AccessControlSystem acs = new AccessControlSystem();

        try{

            ListInterface list = bo.getListByName("TestList");

            String html = list.getLink("Home", ACS_User.getAdmin(), acs, ACS_LoginMethod.getPassword());

            assertTrue(html.contains("<a href"));
            assertTrue(html.contains("section=Home"));
            assertTrue(html.contains("list=TestList"));

        }catch(BackOfficeException e){

            e.logError("");
            assertTrue(false);

        }catch(Exception e){

            e.printStackTrace();
            assertTrue(false);
        }

    }


    @Test
    public void testExport(){

        ListInterface list = bo.getListByName("TestList");

        try {

            String csv = list.getCsvExport();
            PukkaLogger.log(PukkaLogger.Level.INFO, "csv: " + csv);

            assertTrue(csv.contains(","));
            assertTrue(csv.contains("\"calculate val for id; 1\""));  // Escaped

        } catch (BackOfficeException e) {

            e.logError("Error testing export");
            assertTrue(false);
        }


    }
}
