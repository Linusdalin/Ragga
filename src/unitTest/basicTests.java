package unitTest;

import databaseLayer.SQLKey;
import system.backend.RaggaBO;
import system.tables.Example1;
import org.junit.Test;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.condition.LookupByKey;

import dataRepresentation.DataObjectInterface;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;


/************************************************************************
 *
 *              Basic Unit tests
 *
 *
 */


public class basicTests{

    @Test
    public void testBasics(){

        try{

            BackOfficeInterface bo = new RaggaBO();
            assertNotNull(bo);

        }catch(Exception e){

            assertTrue(false);
            e.printStackTrace();
        }

    }

    @Test
    public void testBasics2(){

        try{
            BackOfficeInterface bo = new RaggaBO();
            assertNotNull(bo.getMenu());

            assertNotNull(bo.getSection("ACS"));
            assertNull(bo.getSection("acs"));

            assertNotNull(bo.getTableByName("Example1"));
            assertNull(bo.getTableByName("nonexistent"));
            assertNull(bo.getTableByName(null));

        }catch(Exception e){


            e.printStackTrace();
            assertTrue(false);
        }
    }

    @Test
    public void testCreateDB(){


        try{

            BackOfficeInterface bo = new RaggaBO();
            bo.createDb();
            bo.populateValues(true);

            DataObjectInterface example = new Example1(new LookupByKey(new SQLKey(1)));
            assertTrue(example.exists());

        }catch(Exception e){

            e.printStackTrace();
            assertTrue(false);
        }


    }


}
