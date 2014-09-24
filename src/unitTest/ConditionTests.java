package unitTest;

import databaseLayer.SQLKey;
import system.backend.RaggaBO;

import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.acs.ACS_LoginMethod;
import pukkaBO.acs.ACS_Session;
import pukkaBO.acs.ACS_SessionTable;
import pukkaBO.acs.ACS_User;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.condition.*;

import pukkaBO.exceptions.BackOfficeException;
import dataRepresentation.DBTimeStamp;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;


/*****************************************************************************************'
 *
 *      A condition is used to look up values in the database.
 *
 *      It can be used to get a single item or a list of items.
 *
 *      The condition is passed in the constructor.
 *
 */


public class ConditionTests{

    static ACS_User adminUser;

    /**********************************************
     *
     *  preamble, creating a list. ACS_Session is just an example
     */

    @BeforeClass
    public static void beforeClass(){

        try{

            BackOfficeInterface bo = new RaggaBO();
            bo.createDb();
            bo.populateValues(true);

            adminUser= new ACS_User(new LookupByKey(new SQLKey(1)));
            

            ACS_Session entry;

            new ACS_Session(adminUser.getKey(), new DBTimeStamp(DBTimeStamp.SQL_TIMESTAMP, "2012-01-01 00:01:00").getSQLTime().toString(), true, ACS_LoginMethod.getPassword().getKey(), "key", "desc").store();
            new ACS_Session(adminUser.getKey(), new DBTimeStamp(DBTimeStamp.SQL_TIMESTAMP, "2012-01-01 00:01:03").getSQLTime().toString(), true, ACS_LoginMethod.getPassword().getKey(), "key", "desc" ).store();
            new ACS_Session(adminUser.getKey(), new DBTimeStamp(DBTimeStamp.SQL_TIMESTAMP, "2012-01-01 00:01:02").getSQLTime().toString(), true, ACS_LoginMethod.getPassword().getKey(), "key", "desc" ).store();
            new ACS_Session(adminUser.getKey(), new DBTimeStamp(DBTimeStamp.SQL_TIMESTAMP, "2012-01-01 00:01:01").getSQLTime().toString(), true, ACS_LoginMethod.getPassword().getKey(), "key", "desc" ).store();

        } catch (BackOfficeException e) {

            e.logError("Error in condition test");
            assertTrue(false);
        }

    }

    /*********************************************************************************
     *
     *      List conditions defines which elements should be fetched from the database.
     *
     *      It returns a list
     */


    @Test
    public void testListConditions(){

        ACS_SessionTable all = new ACS_SessionTable(new LookupList(new Sorting("Time", Ordering.FIRST)));

        /*

        assertThat(all.getValues().size(), is(4));
        assertThat(all.getValues().get(0).getKey().id, is((long)1));

        all = new ACS_SessionTable(new LookupList("Time", Ordering.LAST));
        assertThat(all.getValues().size(), is(4));
        assertThat(all.getValues().get(0).getKey().id, is((long)2));

 */
    }


    /***********************************************************************************
     *
     *      Using a getAllCondition works for a single instance too.
     *      It then returns a
     */

    @Test
    public void testConditions(){

        try{

            /*
            ACS_Session firstInTime = new ACS_Session(new LookupItem().addOrdering("Time", Ordering.FIRST));
            assertThat(firstInTime.getKey().id, is((long)1));

            ACS_Session lastInTime = new ACS_Session(new LookupItem().addOrdering("Time", Ordering.LAST));
            assertThat(lastInTime.getKey().id, is((long)2));

            ACS_Session firstId = new ACS_Session(new LookupItem().addOrdering("id", Ordering.FIRST));
            assertThat(firstId.getKey().id, is((long)1));

            ACS_Session lastId = new ACS_Session(new LookupItem().addOrdering("id", Ordering.LAST));
            assertThat(lastId.getKey().id, is((long)4));

            ACS_Session shallNotWork = new ACS_Session(new LookupList("Time", Ordering.FIRST));
            assertThat(shallNotWork.exists(), is(false));
              */

        }catch(Exception e){

            e.printStackTrace();
            assertTrue(false);
        }

    }

    /**********************************************************
     *
     *      SimpleCondition is just a free text SQL condition acting on a single table
     *
     */

    @Test
    public void testSimpleCondition(){



        /*
                TODO: Fix the conditions

            ACS_Session theOneWith12 = new ACS_Session(new SimpleCondition("accessCode = 12"));
            assertThat(theOneWith12.getKey().id, is((long)2));

            ACS_Session nonExistent = new ACS_Session(new SimpleCondition("accessCode = 4711"));
            assertThat(nonExistent.exists(), is(false));

            ACS_SessionTable highs = new ACS_SessionTable(adminUser, new SimpleCondition("accessCode > 12"));
            assertThat(highs.getValues().size(), is(2));

        */

    }


}
