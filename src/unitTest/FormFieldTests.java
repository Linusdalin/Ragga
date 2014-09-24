package unitTest;

import org.junit.Test;
import pukkaBO.form.*;

import java.util.ArrayList;
import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

/**
 *
 *          Basic functions for form fields
 *
 *          TODO: Add tests for positioning
 *          TODO: Add tests for validation
 *          TODO: Add tests for required
 *          TODO: Add tests for "onSubmit"
 */


public class FormFieldTests extends PukkaTest{

    @Test
    public void testButton(){

        FormFieldInterface field = new Button("Button", FormPlacement.LEFT, false);
        assertFalse(field.shouldValidate());
        assertThat(field.getFieldId(), is(""));
        String html = field.renderElement();
        assertTrue(contains(html, "<input"));
        assertTrue(contains(html, "class=\"btn primary\""));

    }

    /**********************************************************************'''
     *
     *      A checkbox can be generated checked or not
     *
     */

    @Test
    public void checkBox(){

        FormFieldInterface field = new Checkbox("Check Here",FormPlacement.NEW_LINE, false);
        assertFalse(field.shouldValidate());
        assertThat(field.getFieldId(), is(""));
        String html = field.renderElement();
        assertTrue(contains(html, "<input type=\"checkbox\""));
        assertTrue(notContains(html, "checked=\"checked\""));

        // Set checked and see that it is rendered correctly

        field = new Checkbox("Check Here", FormPlacement.NEW_LINE, true);
        html = field.renderElement();
        assertTrue(html.contains("checked=\"checked\""));

    }

    @Test
    public void dateField(){

        String date = "2013-01-02";
        String time = "2013-01-02 11:12:13";

        FormFieldInterface field = new DateField("Date:", "date");   // No value
        assertFalse(field.shouldValidate());
        assertThat(field.getFieldId(), is("date"));
        String html = field.renderElement();

        //PukkaLogger.log(PukkaLogger.Level.INFO, html);
        assertTrue(contains(html, "<input id=\"date\""));
        assertTrue(contains(html, "placeholder = \"yyyy-mm-dd\""));

        // Try to set a value

        field = new DateField("Date:", "date", date);
        html = field.renderElement();
        assertTrue(notContains(html, "placeholder"));
        assertTrue(contains(html, "value = \""+date+"\""));

        // If we set a time, this should be the same as the value

        field = new DateField("Date:", "date", time);
        html = field.renderElement();
        assertTrue(notContains(html, "placeholder"));
        assertTrue(contains(html, "value = \""+date+"\""));

        String script = field.getScript();
        assertTrue(contains(script, "date"));
        assertTrue(contains(script, ".datepicker"));


    }


    @Test
    public void dropDown(){


        List<DropDownElementInterface> options = new ArrayList<DropDownElementInterface>();
        options.add(new DropDownElement("test value 1"));
        options.add(new DropDownElement("test value 2"));


        FormFieldInterface field = new DropDownList("select", "Select", options, 1, "please select:", "", false);


        assertFalse(field.shouldValidate());
        assertThat(field.getFieldId(), is("Select"));
        String html = field.renderElement();
        assertTrue(contains(html, "<select id=\"Select\""));

        assertTrue(contains(html, "<option name=\"all\" value=\"0\">please select:"));
        assertTrue(contains(html, "<option name=\"test value 2\" value=\"2\" >test value 2</option>"));


        String script = field.getScript();
        assertThat(script, is(""));

    }

    @Test
    public void text(){

        FormFieldInterface field = new TextField("Text", "text", "value", "placeholder", "tooltip", 0, 100, 20);
        assertFalse(field.shouldValidate());
        assertThat(field.getFieldId(), is("text"));
        String html = field.renderElement();
        assertTrue(contains(html, "<input"));

        assertTrue(contains(html, "<input"));
        assertTrue(contains(html, "value = \"value\""));
        assertTrue(contains(html, "type=\"text\""));
        assertTrue(contains(html, "size=\"20\""));


        // Test placeholder

        field = new TextField("Text", "text", "", "placeholder", "tooltip", 0, 100, 20);
        html = field.renderElement();
        assertTrue(notContains(html, "value"));
        assertTrue(contains(html, "placeholder = \"placeholder\""));


    }

}
