package unitTest;

import databaseLayer.SQLKey;
import system.backend.RaggaBO;
import system.ExampleForm;
import system.ExampleForm2;
import system.tables.DataReference;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.acs.ACS_BrandTable;
import pukkaBO.acs.ACS_User;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.condition.LookupByKey;
import pukkaBO.condition.LookupList;

import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.form.DropDownElement;
import pukkaBO.form.DropDownElementInterface;
import pukkaBO.form.DropDownList;
import pukkaBO.form.FormInterface;
import pukkaBO.formsPredefined.TableEditForm;
import pukkaBO.formsPredefined.TableFilterForm;
import dataRepresentation.DataObjectInterface;
import dataRepresentation.DataTableInterface;

import java.util.ArrayList;
import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;


/**
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2011-11-26
 * Time: 22:13
 * To change this template use File | Settings | File Templates.
 */
public class FormTest{

    private static BackOfficeInterface bo;

    @BeforeClass
    public static void preAmble(){

        bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

    }

    /*****************************************************************'
     *
     *  A form can be accessed the same way as tables etc.
     *
     *  The form is registered in the main back-office class and then found by name
     *
     *
     */


    @Test
    public void testLookupByName(){

        try{

            FormInterface form = bo.getFormByName("ExampleForm");
            assertNotNull(form);

            form = bo.getFormByName(null);
            assertNull(form);

            form = bo.getFormByName("This does not exist");
            assertNull(form);


        } catch (Exception e) {

            e.printStackTrace();
            assertTrue(false);
        }
    }


    /************************************************************************************
     *
     *      This is the expected outcome from renderForm()
     *
     *
         <FORM METHOD=POST action="admin.jsp?action=search" id="This is an example form.">
           <fieldset>
               <legend>No title</legend>

              <DIV class="clearfix">	<label for="Nickname">Nickname</label>
               <div class="input"><input id="Nickname" name="Nickname" value="test" class="xlarge" type="text" size="20" maxlength="20" /></div>

           </div>

           <DIV class="clearfix">	<label for="Email">Email</label>
               <div class="input"><input id="Email" name="Email" value="a@b.c" class="xlarge" type="text" size="20" maxlength="50" /></div>

           </div><DIV class="clearfix">
               <input type="submit" value="Search" class="btn primary" id="submit_form" />
           </div>
           </fieldset>

         </FORM>
     */


    @Test
    public void testForm(){

        FormInterface form = new ExampleForm(bo);
        String html = form.renderForm("", 0);

        //PukkaLogger.log(PukkaLogger.Level.INFO, "Form:\n" + html);

        assertTrue(html != null);

        assertTrue(html.contains("<input id=\"Nickname\""));
        assertTrue(html.contains("<input id=\"Email\""));
        assertTrue(html.contains("<input type=\"submit\" value=\"Search\""));


    }

    /********************************************************************
     *
     *          Each table can automatically generate a form for editing
     *          or adding rows
     *
     *
     */



    @Test
    public void testTableEditForm(){

        DataTableInterface table = bo.getTableByName("Example2");

        TableEditForm.FormType type = TableEditForm.FormType.ADD;

        try {
            DataObjectInterface filter = null;
            FormInterface form = new TableEditForm(table, filter, type, bo, "section");
            assertTrue(form.getName().equals(table.getTitle()));
            String html = form.renderForm("", 0);

            assertTrue(html.contains("<label for=\"Location\">"));
            assertTrue(html.contains("<label for=\"Time\">"));
            assertTrue(html.contains("<label for=\"Occurrences\">"));

            assertTrue(html.contains("name=\"Time\" placeholder = \"yyyy-mm-dd hh:mm:ss\""));

            assertTrue(html.contains("<input type=\"submit\" value=\"Add\" class=\"btn primary\""));


        } catch (BackOfficeException e) {

            e.logError("Error in test");
            assertTrue(false);
        }

        try {
            DataObjectInterface filter =new DataReference(new LookupByKey(new SQLKey(1)));
            FormInterface form = new TableEditForm(table, filter, type, bo, "section");
            assertTrue(form.getName().equals(table.getTitle()));
            String html = form.renderForm("", 0);

            //PukkaLogger.log(PukkaLogger.Level.INFO, "*********** \nTable2:\n" + html);

            assertTrue(html.contains("<label for=\"Location\">"));
            assertTrue(html.contains("<label for=\"Time\">"));
            assertTrue(html.contains("<label for=\"Occurrences\">"));

            assertTrue(html.contains("name=\"Time\" value = \"2012-09-30 12:25:20.0\""));

            assertTrue(html.contains("<input type=\"submit\" value=\"Add\" class=\"btn primary\""));


        } catch (BackOfficeException e) {

            e.logError("Error in test");
            assertTrue(false);
        }


    }

    /******************************************************************************
     *
     *      The filter form is generated from a table used to filter the search in the back-office
     *
     */

    @Test
    public void testTableFilterForm(){

        BackOfficeInterface bo = new RaggaBO();
        String section = "Home";
        TableEditForm.FormType type = TableEditForm.FormType.ADD;

        try {
            DataTableInterface table = bo.getTableByName("Example1");
            DataObjectInterface filter = null;
            FormInterface form = new TableFilterForm(table, filter, section, bo);
            assertTrue(form.getName().equals(table.getTitle()));
            String html = form.renderForm("", 0);

            assertTrue(html.contains("<label for=\"Name\">"));
            assertTrue(html.contains("<input type=\"submit\" value=\"Search\" class=\"btn primary\""));



        } catch (BackOfficeException e) {

            e.logError("Error in test");
            assertTrue(false);
        }

        try {
            DataTableInterface table = bo.getTableByName("Example2");
            DataObjectInterface filter = new DataReference(new LookupByKey(new SQLKey(1)));

            FormInterface form = new TableFilterForm(table, filter, section, bo);
            assertTrue(form.getName().equals(table.getTitle()));
            String html = form.renderForm("", 0);

            assertNotNull(html);


        } catch (BackOfficeException e) {

            e.logError("Error in test");
            assertTrue(false);
        }


    }



    @Test
    public void testDropDownTableReference(){

        try{

            ACS_User adminUser = new ACS_User(new LookupByKey(new SQLKey(1)));

            ACS_BrandTable brandList = new ACS_BrandTable(new LookupList());
            String dropDownList = brandList.getDropDown().generate("test", new SQLKey(0), "Master", "Medium", true);

            //PukkaLogger.log(PukkaLogger.Level.INFO, "drop down:" + dropDownList);

            assertTrue(dropDownList.contains("<select"));
            assertTrue(dropDownList.contains("<option"));

        }catch(Exception e){

            e.printStackTrace();
            assertTrue(false);
        }


    }

    @Test
    public void testExampleForm(){

        FormInterface form = new ExampleForm2(bo);
        String html = form.renderForm("", 0);

        //PukkaLogger.log(PukkaLogger.Level.INFO, "Form:\n" + html);

        assertTrue(html != null);

        assertTrue(html.contains("<input id=\"Nickname\""));
        assertTrue(html.contains("<input id=\"Password\""));
        assertTrue(html.contains("<input id=\"Date\""));
        assertTrue(html.contains("<input type=\"submit\" value=\"Submit\""));



    }

    @Test
    public void testDropDown(){

        List<DropDownElementInterface> options = new ArrayList<DropDownElementInterface>();
        options.add(new DropDownElement("a"));
        options.add(new DropDownElement("b"));

        DropDownList list = new DropDownList("test drop down", "test", options, 1, "select", "", false);
        assertThat(list.getFieldId(), is("test"));
        String html = list.renderElement();

        //PukkaLogger.log(PukkaLogger.Level.INFO, html);

        assertTrue(html.contains("<label for=\"test\">test drop down</label>"));
        assertTrue(html.contains("<option name=\"a\" value=\"1\" selected >a</option>"));


    }


}
