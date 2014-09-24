package unitTest;

import system.backend.RaggaBO;
import junit.framework.TestCase;
import log.PukkaLogger;
import org.junit.Test;
import pukkaBO.acs.*;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.renderer.TableRendererInterface;
import dataRepresentation.DataTableInterface;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

/**
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2012-01-03
 * Time: 01:49
 * To change this template use File | Settings | File Templates.
 */
public class productAndBrandTest extends TestCase {




    @Test
    public void testTableWithoutProduct(){

        BackOfficeInterface bo = preAmbleCreateBO();
        AccessControlSystem acs = new AccessControlSystem();
        DataTableInterface referenceTable = bo.getTableByName("Example2");

        //ACS_Brand ppc = new ACS_Brand(new SimpleCondition("name='PPC'"));
        //ACS_Brand ragga = new ACS_Brand(new SimpleCondition("name='Ragga'"));

        TableRendererInterface renderer = bo.getRenderer();

    }


    private BackOfficeInterface preAmbleCreateBO(){

        BackOfficeInterface bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

        try{



            ACS_Brand ppc = (ACS_Brand)new ACS_Brand("PPC", "xyz").store();
            ACS_Brand ragga = (ACS_Brand)new ACS_Brand("Ragga", "xyz").store();
            ACS_Brand allin = (ACS_Brand)new ACS_Brand("All-In", "xyz").store();



        }catch(BackOfficeException e){

            PukkaLogger.log(PukkaLogger.Level.INFO, "Error storing pukka specific Values." + e.narration);
        }


        return bo;

    }

}
