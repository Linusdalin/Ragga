package system;

import pukkaBO.Charts.ChartInterface;
import pukkaBO.Charts.ChartLegend;
import pukkaBO.Charts.TimeSeriesChart;
import pukkaBO.exceptions.BackOfficeException;

/**
 *     This is a simple test chart. Use this as a template
 */

public class TestChart extends TimeSeriesChart implements ChartInterface{

    private static final String NAME  = "test_chart";
    private static final String TITLE = "Test Chart";

    public TestChart(){

        super(NAME, TITLE);

        //Set changes to the default settings here

        backgroundColor = "#CACACA";
        yLabelText = "y axis scale";
        //height = 1000;

        legend = new ChartLegend[]{

                new ChartLegend("One", ChartLegend.Type.spline),
                new ChartLegend("Two", ChartLegend.Type.line),
                new ChartLegend("Three", ChartLegend.Type.column),
                new ChartLegend("Four", ChartLegend.Type.area),
         };

        sideBySide = true;    //Allow the next chart to be beside
        dynamicLoad = false;
    }

    /************************************************************
     *
     *      Generate the values for the chart.
     *
     * @param data - not used
     * @return  - a matrix that corresponds to the number of bars to be displayed
     */

    public Double[][] getValues(  Object data){

        return new Double[][]{

                {8.0, 12.0, 11.0, 5.0, 7.0},
                {2.0, -1.0, 5.0, 1.0, 2.0},
                {-1.0,5.0,7.0,1.0,-5.0},
                {1.0,2.0,1.0,1.0,3.0},
        };
    }

    public String getJsonEncoding( Object data) throws BackOfficeException{

        // Create the json encoding by getting the values and passing it to the parent json builder

        return super.getBasicJsonEncoding(getValues( data));
    }

    public String getChartScript( Object data ) throws BackOfficeException {


        return super.getBasicChartScript( getValues( data));
    }
}
