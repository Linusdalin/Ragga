package unitTest;

import system.backend.RaggaBO;
import org.junit.Test;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.database.DBSession;
import pukkaBO.exceptions.BackOfficeException;
import dataRepresentation.SQLTable;

import static junit.framework.Assert.assertFalse;
import static junit.framework.Assert.assertTrue;
import static org.junit.Assert.assertThat;

/**
 *
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2013-03-16
 * Time: 20:56
 * To change this template use File | Settings | File Templates.
 */


public class DBSessionTests {

    @Test
    public void testWrongDatabase(){

        try {

            DBSession session = new DBSession("unknown database");
            assertTrue(false);

        } catch (BackOfficeException e) {

            e.swallow("Unknown");
        }

    }

    @Test
    public void testDatabaseSession(){

        try {

            BackOfficeInterface bo = new RaggaBO();

            DBSession session = SQLTable.getSession();
            session.open();
            session.close();


        } catch (Exception e) {

            e.printStackTrace();
            assertTrue(false);
        }

    }


}
