package system;

import pukkaBO.GenericPage.PageTab;
import pukkaBO.GenericPage.PageTabInterface;
import pukkaBO.acs.ACS_LoginMethod;
import pukkaBO.acs.ACS_User;
import pukkaBO.acs.AccessControlSystem;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;

import javax.servlet.http.HttpServletRequest;

/**
 *
 *          Test tab.
 *          Constructing this tab, the title and headline is passed as parameters. They could also be created here,
 *          but in the example we want to reuse the same tab twice on the page. (with different names)
 *
 *          We can also see the use of tabId in getBody() that is used to create different bodies from the same source.
 *
 */

public class TestPageTab1 extends PageTab implements PageTabInterface{

    TestPageTab1(String title, String headline){

        super(title, headline);
    }

    public String getBody(String page, int tabId, BackOfficeInterface backOffice, HttpServletRequest request, String[] parameters, ACS_User adminUser, AccessControlSystem acs, ACS_LoginMethod loginMethod) throws BackOfficeException {

        return "Body for test tab "+(tabId+1)+" on page "+ page+"...";
    }

}
