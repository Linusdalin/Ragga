package unitTest;

import system.backend.RaggaBO;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.accordion.Accordion;
import pukkaBO.accordion.AccordionInterface;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.style.StyleWidth;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;


/**
 *
 *      Test the functions for accordions
 */
public class AccordionTests {

    private static BackOfficeInterface bo;

    @BeforeClass
    public static void preAmble(){

        bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

    }

    /*************************************************************
     *
     *
     *
     *
     */


    @Test
    public void testCreateAccordion(){

        AccordionInterface accordion = new Accordion("Test");
        assertThat(accordion.getName(), is("Test"));

        try{

            accordion.addSection("Section1", "Section 1 Title", "Body...", "at start class", StyleWidth.Full);
            accordion.addSection("Section2", "Section 2 Title", "Body...", "at start class", StyleWidth.Full);

            String html = accordion.render();
            assertTrue(html.contains("<div class=\"content widgetgrid\">"));
            assertTrue(html.contains("<div class=\"widgetbox\" style=\"width: 900px\">"));
            //System.out.print("html: " + html);

        }catch(Exception e){

            e.printStackTrace();
            assertTrue(false);
        }

    }
}
