package unitTest;

import system.backend.RaggaBO;
import log.PukkaLogger;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.Charts.ChartInterface;
import pukkaBO.Charts.PieChart;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;

import static org.junit.Assert.*;

/**
 *
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2012-04-07
 * Time: 15:05
 * To change this template use File | Settings | File Templates.
 */
public class chartTests{

    private static BackOfficeInterface bo;

    @BeforeClass
    public static void preamble(){

        bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

    }


    @Test
    public void testLookupByName(){

        try{

            ChartInterface chart = bo.getChartByName("test_chart");
            assertNotNull(chart);

            chart = bo.getChartByName(null);
            assertNull(chart);

            chart = bo.getChartByName("This does not exist");
            assertNull(chart);


        } catch (Exception e) {

            e.printStackTrace();
            assertTrue(false);
        }
    }

    @Test
    public void testScript(){

        ChartInterface chart =  bo.getChartByName("test_chart");
        ChartInterface chart2 =  bo.getChartByName("pie_chart");
        assertTrue(chart != null);
        assertTrue(chart2 != null);

        String script1 = null;
        String script2 = null;
        try {

            script1 = chart.getChartScript(0);     //TODO: Add test for object
            script2 = chart2.getChartScript( 0);

        } catch (BackOfficeException e) {

            e.logError("Configuration error");
            assertTrue(false);
        }

        PukkaLogger.log(PukkaLogger.Level.INFO, "Script:\n" + script1);

        assertTrue(script1.contains("defaultSeriesType: 'column'"));
        assertTrue(script1.contains("backgroundColor: '#CACACA'"));

        PukkaLogger.log(PukkaLogger.Level.INFO, "Script2: " + script2);

        assertTrue(script2.contains("jQuery.getJSON('/bo/adminCommon/diagrams/diagram_data_json.jsp?"));
        assertTrue(script2.contains("backgroundColor: '#FAFAFA'"));


    }

    @Test
    public void testData(){

        BackOfficeInterface bo = new RaggaBO();

        ChartInterface chart =  bo.getChartByName("test_chart");
        ChartInterface chart2 =  bo.getChartByName("pie_chart");

        String json = null;
        String json2 = null;

        try {

            json = chart.getJsonEncoding( 0 );
            json2 = chart2.getJsonEncoding( 0 );

        } catch (BackOfficeException e) {
            e.logError("Could not get json");
            assertTrue(false);
        }

        PukkaLogger.log(PukkaLogger.Level.INFO, "json for bar chart:\n" + json);
        PukkaLogger.log(PukkaLogger.Level.INFO, "json for pie chart:\n" + json2);

        assertTrue(json.contains("name:'One',type:'spline',pointStart: Date.UTC(2012,0, 1),pointInterval: 24 * 3600 * 1000, data:"));
        assertTrue(json.contains("name:'Two',type:'line',pointStart: Date.UTC(2012,0, 1),pointInterval: 24 * 3600 * 1000, data:"));

        assertTrue(json2.contains("dataLabels:{ enabled: false }"));
        assertTrue(json2.contains("{ name:'US', y:45, color: '#4572A7' },"));
    }


    @Test
    public void testDivs(){

        BackOfficeInterface bo = new RaggaBO();

        ChartInterface chart =  bo.getChartByName("test_chart");
        PieChart chart2 =  (PieChart)bo.getChartByName("pie_chart");

        String div1 = chart.getChartDiv();
        String div2 = chart2.getChartDiv();

        assertTrue(div1.contains("<div id=\""+ chart.getName() +"\""));
        assertTrue(div2.contains("<div id=\""+ chart2.getName() +"\""));

        assertFalse(div1.contains("<div id=\"new_line\""));
        assertTrue(div2.contains("<div id=\"new_line\""));

    }

}
