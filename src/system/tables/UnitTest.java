package system.tables;

import dataRepresentation.DBTimeStamp;
import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import system.backend.RaggaBO;
import org.junit.Test;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import pukkaBO.condition.LookupByKey;
import databaseLayer.DBKeyInterface;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.backOffice.BackOfficeInterface;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;
/* Unit tests... */

public class UnitTest{

    private static LocalServiceTestHelper helper;
    private static DBKeyInterface dummyKey;


    @AfterClass
    public static void tearDown() {

        helper.tearDown();
    }


    @BeforeClass
    public static void preAmble(){

        helper = new LocalServiceTestHelper(new LocalDatastoreServiceTestConfig());
        helper.setUp();
        try {

            BackOfficeInterface bo = new RaggaBO();
            bo.init();
            dummyKey = null;

        } catch (Exception e) {

            e.printStackTrace();
        }

    }

         @Test
         public void testExample1(){
     
             try{
     
                 system.tables.Example1 table1 = new system.tables.Example1("text 1", 2, true, 4);

                 assertThat(table1.getName(), is("text 1"));
                 assertThat(table1.getNumber(), is((long)2));
                 assertThat(table1.getisActive(), is(true));
                 assertThat(table1.getStatus(), is((long)4));

                 table1.store();
                 system.tables.Example1 table2 = new system.tables.Example1();
                 table2.load(new LookupByKey(table1.getKey()));

                 assertThat(table2.getName(), is("text 1"));
                 assertThat(table2.getNumber(), is((long)2));
                 assertThat(table2.getisActive(), is(true));
                 assertThat(table2.getStatus(), is((long)4));

                 table1.setName("text 11");
                 table1.setNumber(12);
                 table1.setisActive(true);
                 table1.setStatus(14);
                 assertThat(table1.getName(), is("text 11"));
                 assertThat(table1.getNumber(), is((long)12));
                 assertThat(table1.getisActive(), is(true));
                 assertThat(table1.getStatus(), is((long)14));

             }catch(BackOfficeException e){
     
                 e.logError("Error creating table Example1");
                 assertTrue(false);
                 
             }catch(Exception e){

                 e.printStackTrace();
                 assertTrue(false);
             }
          }

         @Test
         public void testExample3(){
     
             try{
     
                 system.tables.Example3 table1 = new system.tables.Example3("text 1", "text 2", "text 3", 4, true, "2012-01-06 00:00:00.0", "2012-01-07");

                 assertThat(table1.getName(), is("text 1"));
                 assertThat(table1.getLongText(), is("text 2"));
                 assertThat(table1.getBlobLength(), is("text 3"));
                 assertThat(table1.getNumber(), is((long)4));
                 assertThat(table1.getisActive(), is(true));
                 assertThat(table1.getlast().getSQLTime().toString(), is("2012-01-06 00:00:00.0"));
                 assertThat(table1.getfirst().getISODate(), is("2012-01-07"));

                 table1.store();
                 system.tables.Example3 table2 = new system.tables.Example3();
                 table2.load(new LookupByKey(table1.getKey()));

                 assertThat(table2.getName(), is("text 1"));
                 assertThat(table2.getLongText(), is("text 2"));
                 assertThat(table2.getBlobLength(), is("text 3"));
                 assertThat(table2.getNumber(), is((long)4));
                 assertThat(table2.getisActive(), is(true));
                 assertThat(table2.getlast().getSQLTime().toString(), is("2012-01-06 00:00:00.0"));
                 assertThat(table2.getfirst().getISODate(), is("2012-01-07"));

                 table1.setName("text 11");
                 table1.setLongText("text 12");
                 table1.setBlobLength("text 13");
                 table1.setNumber(14);
                 table1.setisActive(true);
                 table1.setlast(new DBTimeStamp(DBTimeStamp.SQL_TIMESTAMP, "2012-01-16 00:00:00.0"));
                 table1.setfirst(new DBTimeStamp(DBTimeStamp.ISO_DATE, "2012-01-17"));
                 assertThat(table1.getName(), is("text 11"));
                 assertThat(table1.getLongText(), is("text 12"));
                 assertThat(table1.getBlobLength(), is("text 13"));
                 assertThat(table1.getNumber(), is((long)14));
                 assertThat(table1.getisActive(), is(true));
                 assertThat(table1.getlast().getSQLTime().toString(), is("2012-01-16 00:00:00.0"));
                 assertThat(table1.getfirst().getISODate(), is("2012-01-17"));

             }catch(BackOfficeException e){
     
                 e.logError("Error creating table Example3");
                 assertTrue(false);
                 
             }catch(Exception e){

                 e.printStackTrace();
                 assertTrue(false);
             }
          }

         @Test
         public void testDataReference(){
     
             try{
     
                 system.tables.DataReference table1 = new system.tables.DataReference("text 1", dummyKey, "2012-01-03 00:00:00.0", "2012-01-04", 5);

                 assertThat(table1.getLocation(), is("text 1"));
                 assertThat(table1.getnameId(), is(dummyKey));
                 assertThat(table1.getname().exists(), is(false));
                 assertThat(table1.getTime().getSQLTime().toString(), is("2012-01-03 00:00:00.0"));
                 assertThat(table1.getBirth().getISODate(), is("2012-01-04"));
                 assertThat(table1.getOccurrences(), is((long)5));

                 table1.store();
                 system.tables.DataReference table2 = new system.tables.DataReference();
                 table2.load(new LookupByKey(table1.getKey()));

                 assertThat(table2.getLocation(), is("text 1"));
                 assertThat(table2.getnameId(), is(dummyKey));
                 assertThat(table2.getname().exists(), is(false));
                 assertThat(table2.getTime().getSQLTime().toString(), is("2012-01-03 00:00:00.0"));
                 assertThat(table2.getBirth().getISODate(), is("2012-01-04"));
                 assertThat(table2.getOccurrences(), is((long)5));

                 table1.setLocation("text 11");
                 table1.setname( dummyKey);
                 table1.setTime(new DBTimeStamp(DBTimeStamp.SQL_TIMESTAMP, "2012-01-13 00:00:00.0"));
                 table1.setBirth(new DBTimeStamp(DBTimeStamp.ISO_DATE, "2012-01-14"));
                 table1.setOccurrences(15);
                 assertThat(table1.getLocation(), is("text 11"));
                 assertThat(table1.getnameId(), is(dummyKey));
                 assertThat(table1.getname().exists(), is(false));
                 assertThat(table1.getTime().getSQLTime().toString(), is("2012-01-13 00:00:00.0"));
                 assertThat(table1.getBirth().getISODate(), is("2012-01-14"));
                 assertThat(table1.getOccurrences(), is((long)15));

             }catch(BackOfficeException e){
     
                 e.logError("Error creating table DataReference");
                 assertTrue(false);
                 
             }catch(Exception e){

                 e.printStackTrace();
                 assertTrue(false);
             }
          }

         @Test
         public void testExamplePivotObject(){
     
             try{
     
                 system.tables.ExamplePivotObject table1 = new system.tables.ExamplePivotObject("text 1", "text 2", "2012-01-03", dummyKey);

                 assertThat(table1.getName(), is("text 1"));
                 assertThat(table1.getCountry(), is("text 2"));
                 assertThat(table1.getComission().getISODate(), is("2012-01-03"));
                 assertThat(table1.getMakeId(), is(dummyKey));
                 assertThat(table1.getMake().exists(), is(false));

                 table1.store();
                 system.tables.ExamplePivotObject table2 = new system.tables.ExamplePivotObject();
                 table2.load(new LookupByKey(table1.getKey()));

                 assertThat(table2.getName(), is("text 1"));
                 assertThat(table2.getCountry(), is("text 2"));
                 assertThat(table2.getComission().getISODate(), is("2012-01-03"));
                 assertThat(table2.getMakeId(), is(dummyKey));
                 assertThat(table2.getMake().exists(), is(false));

                 table1.setName("text 11");
                 table1.setCountry("text 12");
                 table1.setComission(new DBTimeStamp(DBTimeStamp.ISO_DATE, "2012-01-13"));
                 table1.setMake( dummyKey);
                 assertThat(table1.getName(), is("text 11"));
                 assertThat(table1.getCountry(), is("text 12"));
                 assertThat(table1.getComission().getISODate(), is("2012-01-13"));
                 assertThat(table1.getMakeId(), is(dummyKey));
                 assertThat(table1.getMake().exists(), is(false));

             }catch(BackOfficeException e){
     
                 e.logError("Error creating table ExamplePivotObject");
                 assertTrue(false);
                 
             }catch(Exception e){

                 e.printStackTrace();
                 assertTrue(false);
             }
          }

         @Test
         public void testExamplePivotSecondary(){
     
             try{
     
                 system.tables.ExamplePivotSecondary table1 = new system.tables.ExamplePivotSecondary("text 1", "text 2", 3);

                 assertThat(table1.getName(), is("text 1"));
                 assertThat(table1.getOrigin(), is("text 2"));
                 assertThat(table1.getBHP(), is((long)3));

                 table1.store();
                 system.tables.ExamplePivotSecondary table2 = new system.tables.ExamplePivotSecondary();
                 table2.load(new LookupByKey(table1.getKey()));

                 assertThat(table2.getName(), is("text 1"));
                 assertThat(table2.getOrigin(), is("text 2"));
                 assertThat(table2.getBHP(), is((long)3));

                 table1.setName("text 11");
                 table1.setOrigin("text 12");
                 table1.setBHP(13);
                 assertThat(table1.getName(), is("text 11"));
                 assertThat(table1.getOrigin(), is("text 12"));
                 assertThat(table1.getBHP(), is((long)13));

             }catch(BackOfficeException e){
     
                 e.logError("Error creating table ExamplePivotSecondary");
                 assertTrue(false);
                 
             }catch(Exception e){

                 e.printStackTrace();
                 assertTrue(false);
             }
          }


}
