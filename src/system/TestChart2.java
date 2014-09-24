package system;

import pukkaBO.Charts.ChartInterface;
import pukkaBO.Charts.ChartLegend;
import pukkaBO.Charts.PieChart;
import pukkaBO.exceptions.BackOfficeException;

/**
 *     This is a simple test pie chart. Use this as a template
 */

public class TestChart2 extends PieChart implements ChartInterface{

    private static final String NAME  = "pie_chart";
    private static final String TITLE = "Test Pie Chart";

    public TestChart2(){

        super(NAME, TITLE);

        //Set changes to the default settings here

        //height = 1000;

        legend = new ChartLegend[]{

            new ChartLegend("US"),
            new ChartLegend("Europe"),
            new ChartLegend("Asia"),
            new ChartLegend("Antarctica"),
        };

        dataLabels = false;  // Show data label or not?
        dynamicLoad = true;

    }




    /************************************************************
     *
     *      Generate the values for the chart.
     *

     * @param data - not used in example
     * @return  - a matrix that corresponds to the number of bars to be displayed
     */

    public Double[] getValues(  Object data){

        return new Double[]{
                 50.0, 30.0, 20.0, 10.0
        };
    };

    public String getJsonEncoding( Object data) throws BackOfficeException{

        // Create the json encoding by getting the values and passing it to the parent json builder

        return super.getBasicJsonEncoding( getValues( data));
    }

    public String getChartScript( Object data) throws BackOfficeException{

        return super.getBasicChartScript( getValues( data));
    }
}
