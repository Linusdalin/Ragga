package unitTest;

import system.backend.RaggaBO;
import junit.framework.TestCase;
import org.junit.Test;
import pukkaBO.backOffice.BackOfficeInterface;

/**
 *
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2012-01-03
 * Time: 09:56
 * To change this template use File | Settings | File Templates.
 */
public class configTest extends TestCase {

    @Test
    public void testLoad(){

        BackOfficeInterface bo = null; // Default config file
        bo = new RaggaBO();
        assertTrue(bo.getProperties().use_acs);

        BackOfficeInterface bo2 = new RaggaBO("wrong file");
        assertTrue(bo2.getProperties().use_acs);

        BackOfficeInterface bo3 = new RaggaBO("backoffice.config"); // Default config file
        assertTrue(bo3.getProperties().use_acs);

        BackOfficeInterface bo4 = new RaggaBO("noACS.config"); // Default config file
        assert(bo4.getProperties().use_acs == false);


    }
}
