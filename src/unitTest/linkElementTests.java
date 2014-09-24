package unitTest;

import junit.framework.TestCase;
import org.junit.Test;
import pukkaBO.GenericPage.Lightbox;
import pukkaBO.acs.*;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.links.LinkElement;

/**
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2011-11-08
 * Time: 20:43
 * To change this template use File | Settings | File Templates.
 */
public class linkElementTests extends TestCase{

    @Test
    public void testLinkElement(){

        String username = "user";
        ACS_User user = new ACS_User();
        String link = "link";
        String pageName = "page.jsp";

        AccessControlSystem acs = new AccessControlSystem();

        try{

            String link1 = new LinkElement(link, pageName).render(user, acs, ACS_LoginMethod.getPassword());
            String link2 = new LinkElement(link, pageName, "this is a tooltip").render(user, acs, ACS_LoginMethod.getPassword());
            String link3 = new LinkElement(link, new Lightbox(pageName, Lightbox.SMALL, "this is a tooltip")).render(user, acs, ACS_LoginMethod.getPassword());

            assert(link1.contains(link) && link1.contains(pageName) && link1.contains("<a href") && link1.contains("</a>"));
            assert(link2.contains(link) && link2.contains(pageName) && link2.contains("<a href") && link2.contains("</a>"));
            assert(link3.contains(link) && link3.contains(pageName) && link3.contains("<a href") && link3.contains("</a>"));

            assert(link2.contains("class=\"tooltipimage\""));
            assert(link3.contains("rel=\"shadowbox\""));


        }catch(BackOfficeException e){

            assertFalse(true);
        }


    }
}
