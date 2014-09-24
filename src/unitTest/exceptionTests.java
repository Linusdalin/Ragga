package unitTest;

import junit.framework.TestCase;
import org.junit.Test;
import pukkaBO.exceptions.BackOfficeException;

import static org.junit.Assert.assertTrue;

/**
 *      There are two possibilities for an exception.
 *
 *      - Either we log it, in which case it is logged as an exception
 *      - Or we swallow it, in which case nothing happens
 */

public class exceptionTests{

    @Test
    public void testException(){

        try{

            throw new BackOfficeException(BackOfficeException.General, "Test Error");

        }catch(BackOfficeException e){

            e.logError("Error");
            e.swallow("Not a big deal");

            //TODO: When logging is implemented, the test should include checking the log entry here
            assertTrue(true);
        }

    }
}
