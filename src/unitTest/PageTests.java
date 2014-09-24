package unitTest;

import system.backend.RaggaBO;
import log.PukkaLogger;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.GenericPage.PageInterface;
import pukkaBO.GenericPage.PageTabInterface;
import pukkaBO.acs.ACS_LoginMethod;
import pukkaBO.acs.ACS_User;
import pukkaBO.acs.AccessAdminPage;
import pukkaBO.acs.AccessControlSystem;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;

import java.util.List;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2012-09-16
 * Time: 19:59
 * To change this template use File | Settings | File Templates.
 */
public class PageTests{

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

            PageInterface page = bo.getPageByName("testPage");
            assertNotNull(page);

            page = bo.getPageByName(null);
            assertNull(page);

            page = bo.getPageByName("This does not exist");
            assertNull(page);


        } catch (Exception e) {

            e.printStackTrace();
            assertTrue(false);
        }
    }


    @Test
    public void testAcsAdmin(){

        try{

            PageInterface page = new AccessAdminPage(bo);
            assertThat(page.getSection(null), is("ACS"));
            assertNotNull(page.getTabs().get(0).getBody("page", 0, bo, null, null, ACS_User.getAdmin(), new AccessControlSystem(), ACS_LoginMethod.getPassword()));

        }catch(BackOfficeException e){

            e.logError("Error getting page");
        }

    }

    /*******************************************************************************
     *
     *      Test the tab generation for a page component.
     *      It should generate different two tabs in the top section
     *
     */

    @Test
    public void testTabs(){

        PageInterface page = bo.getPageByName("testPage");

        // Test page should have two tabs
        assertThat(page.getTabs().size(), is(2));

        try {
            List<PageTabInterface> tabs = page.getTabs();
            String tab1 = tabs.get(0).getBody("page", 0, bo, null, new String[]{}, ACS_User.getAdmin(), new AccessControlSystem(), ACS_LoginMethod.getPassword());
            PukkaLogger.log(PukkaLogger.Level.INFO, "Tab1=" + tab1);
            assertNotNull(tab1);
            assertThat(tab1.isEmpty(), not(is(true)));
            assertThat(tab1.contains("Body for test tab 1"), is(true));

            // Now try generating the top section

            String topSection = page.renderTabs(1);

            PukkaLogger.log(PukkaLogger.Level.INFO, "Top=" + topSection);
            assertNotNull(topSection);
            assertThat(topSection.isEmpty(), not(is(true)));
            assertThat(topSection.contains("<a href=\"?page=testPage&section=Home&tab=0\""), is(true));
            assertThat(topSection.contains("<li class=\"current\">"), is(true));



        } catch (BackOfficeException e) {
            e.logError("Error getting tabs");
            assertTrue(false);
        }


    }




}
