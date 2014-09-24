package unitTest;

import system.backend.RaggaBO;
import junit.framework.TestCase;
import org.junit.Test;
import pukkaBO.acs.ACS_Brand;
import pukkaBO.acs.AccessControlSystem;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;

/**
 *
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2011-11-09
 * Time: 23:12
 * To change this template use File | Settings | File Templates.
 */
public class menuTest extends TestCase {

    @Test
    public void testMenu(){

        String username = "user";
        String link = "link";
        String pageName = "page.jsp";

        AccessControlSystem acs = new AccessControlSystem();

        BackOfficeInterface bo = null;

        bo = new RaggaBO();

        String menu1 = null;
        String menu2 = null;

        try {
            menu1 = bo.getSection("Home").renderMenuItem("Home", new ACS_Brand(), acs);
            menu2 = bo.getSection("Home").renderMenuItem("", new ACS_Brand(), acs);

        } catch (BackOfficeException e) {
            e.logError("");
            assertTrue(false);
        }


        assert(menu1.contains("Home") && menu1.contains("<li") && menu1.contains("<a href") && menu1.contains("</a>") && menu1.contains("</li>"));
        assert(menu2.contains("Home") && menu2.contains("<li") && menu2.contains("<a href") && menu2.contains("</a>") && menu2.contains("</li>"));

        assert(menu1.contains("class=\"active\""));
        assertFalse(menu2.contains("class=\"active\""));

    }

}
