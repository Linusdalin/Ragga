package unitTest;

import databaseLayer.DBKeyInterface;
import databaseLayer.SQLKey;
import system.backend.RaggaBO;
import system.tables.Example1;
import system.tables.Example1Table;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.acs.ACS_User;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.condition.LookupItem;
import pukkaBO.condition.LookupList;
import pukkaBO.condition.LookupByKey;
import pukkaBO.condition.Ordering;

import pukkaBO.exceptions.BackOfficeException;
import dataRepresentation.DataObjectInterface;
import dataRepresentation.DataTableInterface;

import java.util.ArrayList;
import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

/**
 *
 *              Tests for table creation and access
 */

public class tableTests{

    private static BackOfficeInterface bo;

    @BeforeClass
    public static void preAmble(){

        bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

    }

    /********************************************************************************
     *
     *      The table interface is used when getting tables from the database
     *
     */


    @Test
    public void testTableInterface(){

        DataTableInterface exampleTable = new Example1Table();
        assertNotNull(exampleTable.getDescription());

        assertThat(exampleTable.getTableName(), is("example1"));
        assertThat(exampleTable.getTitle(), is("Example1"));

        DataTableInterface exampleTable2 = bo.getTableByName("example1");
        assertThat(exampleTable2.getTitle(), is("Example1"));


    }


    @Test
    public void testTableStructure(){

        try{

            // Creating the data object with a constructor with all the elements

            Example1 example = new Example1("testValue", 1, true, 0);

            //Check the getters and setters from the data object

            assertThat(example.getName(), is("testValue"));
            assertThat(example.getStatus(), is((long) 1 ));
            assertThat(example.getisActive(), is(true));

            // Setting new values with setters

            example.setName("new name");
            example.setStatus(2);
            example.setisActive(false);

            // Checking them again

            assertThat(example.getName(), is("new name"));
            assertThat(example.getStatus(), is( (long)2 ));
            assertThat(example.getisActive(), is(false));


        }
        catch(BackOfficeException e){

            e.logError("Error creating a new table");
            assertTrue(false);
        }

    }

    /***********************************************************************
     *
     *      Store and load a table of data
     *
     */


    @Test
    public void testStoreAndLoadTable(){


        Example1 example = null;

        try{

            // Create an object
            example = new Example1("testValue", 1, true, 0);

            example.setName("test xyz");
            example.store();
            example.setName("some other name");

            assertThat(example.getName(), is("some other name"));

        }
        catch(BackOfficeException e){

            e.logError("Error loading and storing table");
            assertTrue(false);
        }

        Example1 readValue;

        // Read it back from the database (last entry)

        readValue = new Example1(new LookupItem().addOrdering("id", Ordering.LAST));

        assertTrue(readValue.exists());
        assertThat(readValue.getName(), is("test xyz"));
        assertThat(example.getName(), is("some other name"));

        //Index start from 1. This should not work

        example = new Example1(new LookupByKey(new SQLKey(0)));
        assertFalse(example.exists());


    }


    @Test
    public void testList(){

        ACS_User adminUser = new ACS_User(new LookupByKey(new SQLKey(1)));
        int listSize = 0;

        try{

            Example1Table list = new Example1Table(new LookupList());
            listSize = list.values.size();

            DataObjectInterface example = new Example1("testValue", 1, true, 0);
            example.store();
        }
        catch(BackOfficeException e){

                e.logError("");
                assertTrue(false);
            }

        // Check that there is one more element in the list

        Example1Table list = new Example1Table(new LookupList());
        assertThat(list.values.size(), is(listSize + 1));

    }


    @Test
    public void testParameters(){

        List<String> parameters = new ArrayList<String>();
        parameters.add("TokOlle");
        parameters.add("3");
        parameters.add("1");



        try{

            //Get the default data object from the list (for structure)

            Example1 dataObject = (Example1)new Example1Table(  ).getDataObject(parameters);

            assertTrue(dataObject.exists());
            //assertThat(dataObject.getKey().id, is( (long)0 ));
            assertThat(dataObject.getName(), is("TokOlle"));
        }
        catch(BackOfficeException e){

                e.logError("");
                assertTrue(false);
            }


    }

    @Test
    public void testErrors(){

        Example1Table table = new Example1Table();

        try{
            DBKeyInterface i = table.store(null);
            //assertThat(i.id, is( (long)0));

        }catch(BackOfficeException e){

            e.logError("Error testing");
            assertTrue(false);
        }
    }


    @Test
    public void testDelete(){

        try{

            Example1Table list = new Example1Table();
            list.loadFromDatabase();
            int count = list.getValues().size();

            DataObjectInterface example = new Example1("testValue", 1, true, 0);
            DBKeyInterface id = example.store().getKey();

            list.loadFromDatabase();
            int newCount = list.getCount();

            //TODO. Removed for app table
            //int nextId = list.getNextId();

            assertThat(newCount, is(count +1));
            //assertThat(nextId, is(newCount +1));

            list.deleteItem(example);


            int thirdCount = list.getCount(new LookupList());

            assertThat(thirdCount, is(count));

        }catch(BackOfficeException e){

            e.logError("Error testing");
            assertTrue(false);
        }


    }

    @Test
    public void testAggregations(){

        Example1Table list = new Example1Table();

        try {

            assertThat(list.getCount(new LookupList()), is(5));
            assertThat(list.getSum("Status", new LookupList()), is(6));
            assertThat(list.getAverage("id", new LookupList()), is(3));
            assertThat(list.getMax("Status", new LookupList()), is(2));
            assertThat(list.getMin("Status", new LookupList()), is(1));


        } catch (BackOfficeException e) {

            e.logError("Error in test Aggregation");
            assertTrue(false);
        }

    }



}
