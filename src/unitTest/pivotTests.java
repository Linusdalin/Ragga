package unitTest;

import system.backend.RaggaBO;
import system.tables.ExamplePivotObjectTable;
import log.PukkaLogger;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.acs.ACS_LoginMethod;
import pukkaBO.acs.ACS_User;
import pukkaBO.acs.AccessControlSystem;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.pivot.PivotSelection;
import pukkaBO.pivot.PivotTable;
import pukkaBO.pivot.PivotView;
import dataRepresentation.ColumnDataInterface;
import dataRepresentation.DataTableInterface;

import java.util.List;

import static junit.framework.Assert.assertTrue;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertThat;

/**
 *          Tests for rendering a pivot table from a regular table.
 */
public class pivotTests{

    private static BackOfficeInterface bo;


    @BeforeClass
    public static void preAmble(){

        bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

    }

    @Test
    public void testLookupByName(){

        try{

            PivotView view = bo.getPivotViewByName("examplePivot");
            assertNotNull(view);

            view = bo.getPivotViewByName(null);
            assertNull(view);

            view = bo.getPivotViewByName("This does not exist");
            assertNull(view);


        } catch (Exception e) {

            e.printStackTrace();
            assertTrue(false);
        }
    }

    @Test
    public void testSelection(){

        DataTableInterface table = bo.getTableByName("ExamplePivotObject");

        // Create a selection with column 1 of the table (name)
        // It will by default be "unique"

        try {


            PivotSelection selection = new PivotSelection(table, 1);

            assertThat(selection.getFunction(), is(PivotSelection.Unique));

            selection = new PivotSelection(table, 2).setFunction(PivotSelection.Sum);
            assertThat(selection.getFunction(), is(PivotSelection.Sum));

            List<ColumnDataInterface> values = selection.getHeaders( bo );

            assertThat(values.size(), is(4));
            assert(!values.get(0).equals(values.get(1)));
            assert(!values.get(1).equals(values.get(2)));

        } catch (BackOfficeException e) {

            e.logError("Error getting headers");
            Assert.assertTrue(false);
        }
    }


    @Test
    public void testCreatePivotView(){

        DataTableInterface table = bo.getTableByName("ExamplePivotObject");
        assert(table != null);


        try{

            PivotTable pivotTable = new PivotTable(table, bo);

            //THis should not work, there are no fields set
            String html = pivotTable.renderPivotView( bo );
            assertTrue(false);

        }catch(BackOfficeException e){
            e.swallow("Expected");
        }


        try{

            // Create a pivot table with column name (0) and country (1) and body car(3)
            PivotTable pivotTable = new PivotTable(table, bo);

            pivotTable.setX(new PivotSelection(table, 0));
            pivotTable.setY(new PivotSelection(table, 1));
            pivotTable.setBody(new PivotSelection(table, 2).setFunction(PivotSelection.Count));

            //We should get 1 car in specific fields here
            String html = pivotTable.renderPivotView( bo );
            PukkaLogger.log(PukkaLogger.Level.INFO, html);


            assertTrue(html.contains("<td> 0 </td>"));
            assertTrue(html.contains("<td> 1 </td>"));
            assertTrue(html.contains("<td> 2 </td>"));


        }catch(BackOfficeException e){
            e.logError("Error in render pivot");
            assertTrue(false);
        }

        try{

            // Create a pivot table with column name (0) and country (1) and body sum age(2)

            PivotTable pivotTable = new PivotTable(table, bo);

            pivotTable.setX(new PivotSelection(table, 0));
            pivotTable.setY(new PivotSelection(table, 1));
            pivotTable.setBody(new PivotSelection(table, 2).setFunction(PivotSelection.Sum));

            String html = pivotTable.renderPivotView( bo );
            //TODO: Add check here
            PukkaLogger.log(PukkaLogger.Level.INFO, html);

        }catch(BackOfficeException e){
            e.logError("Error in render pivot");
            assertTrue(false);
        }

        try{

            // Create a pivot table with column name (0) and country (1) and body average age(2)

            PivotTable pivotTable = new PivotTable(table, bo);

            pivotTable.setX(new PivotSelection(table, 0));
            pivotTable.setY(new PivotSelection(table, 1));
            pivotTable.setBody(new PivotSelection(table, 2).setFunction(PivotSelection.Average));

            String html = pivotTable.renderPivotView( bo );

            //We should get an average 2003 for the cars in sweden in one cell
            assertTrue(html.contains("<td> 2003 </td>"));
            PukkaLogger.log(PukkaLogger.Level.INFO, html);

        }catch(BackOfficeException e){
            e.logError("Error in render pivot");
            assertTrue(false);
        }



    }

    @Test
    public void testLink(){

        PivotView view = new PivotView("Name", "Title...",  new ExamplePivotObjectTable(), "Showing pivot functions");
        try {

            String html = view.getLink("Home", ACS_User.getAdmin(), new AccessControlSystem(), ACS_LoginMethod.getPassword());
            PukkaLogger.log(PukkaLogger.Level.INFO, html);
            assertTrue(html.contains("section=Home"));
            assertTrue(html.contains("table=ExamplePivotObject"));

            html = view.getLink("Home", ACS_User.getAdmin(), new AccessControlSystem(), ACS_LoginMethod.getPassword(), 1, 2, 3, 4, "Link Text");
            PukkaLogger.log(PukkaLogger.Level.INFO, html);

            assertTrue(html.contains("&XCol=1"));
            assertTrue(html.contains("&YCol=2"));
            assertTrue(html.contains("&Body=3"));
            assertTrue(html.contains("&Function=4"));

            assertTrue(html.contains(">Link Text</a>"));


        } catch (BackOfficeException e) {
            e.logError("Error testing Link");
        }
    }

    @Test
    public void testOneDimensionalPivotView(){

        DataTableInterface table = bo.getTableByName("ExamplePivotObject");

        try{

             // Create a one dimensional pivot table with country (1) and body number of cars(3)

            PivotTable pivotTable = new PivotTable(table, bo);

             pivotTable.setX(new PivotSelection(table, 1));
             pivotTable.setY(new PivotSelection(table, PivotSelection.ALL_COLUMNS));
             pivotTable.setBody(new PivotSelection(table, 3).setFunction(PivotSelection.Count));

             String html = pivotTable.renderPivotView( bo );

            PukkaLogger.log(PukkaLogger.Level.INFO, html);

             assertTrue(html.contains("<td> 2 </td>"));

         }catch(BackOfficeException e){
             e.logError("Error in render pivot");
             assertTrue(false);
         }



    }


    /**************************************************************************
     *
     *      Only one variable each on X and Y axis suported
     *
     *
     */

    @Test
    public void testCreateMultiplePivotView(){

        DataTableInterface table = bo.getTableByName("ExamplePivotObject");
        assert(table != null);


        PivotTable pivotTable = new PivotTable(table, bo);

        try{


            pivotTable.setX(new PivotSelection(table, 0));
            pivotTable.setY(new PivotSelection(table, 1));
            pivotTable.setBody(new PivotSelection(table, 3).setFunction(PivotSelection.Count));

        }catch(BackOfficeException e){

            e.logError("Error in render pivot");
            assertTrue(false);
        }


        try{

            // Add extra not supported
            pivotTable.setX(new PivotSelection(table, 1));
            assertTrue(false);

        }catch(BackOfficeException e){
            e.swallow("Expected");
        }

        try{


            // Add extra not supported
            pivotTable.setY(new PivotSelection(table, 0));
            assertTrue(false);

        }catch(BackOfficeException e){
            e.swallow("Expected");
        }


        try{

            // Add extra not supported
            pivotTable.setBody(new PivotSelection(table, 0));
            assertTrue(false);

        }catch(BackOfficeException e){
            e.swallow("Expected");
        }




    }



}
