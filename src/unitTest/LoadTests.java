package unitTest;

import system.backend.RaggaBO;
import system.tables.Example1;
import log.PukkaLogger;
import org.junit.Test;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;

import static junit.framework.Assert.assertTrue;


/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2012-10-05
 * Time: 20:07
 * To change this template use File | Settings | File Templates.
 */
public class LoadTests {

    @Test
    public void test1000Lines(){

        BackOfficeInterface bo = null; // Default config file
        bo = new RaggaBO();

        for(int i = 0; i < 500; i++){

            try{

                PukkaLogger.log(PukkaLogger.Level.INFO, "" + i);
                Example1 object = new Example1("test"+i, i, true, 0);
                object.store();
            }
            catch(BackOfficeException e){

                e.logError("Error in load test");
                assertTrue(false);
            }
        }
    }
}
