package unitTest;

import log.PukkaLogger;
import org.junit.Test;
import pukkaBO.statisticsBox.StatisticsBox;
import pukkaBO.statisticsBox.StatisticsBoxInterface;
import pukkaBO.style.StyleWidth;

/**
 *
 *          These are tests for the simple Statistics box system
 */

public class dataBoxTests{


    @Test
    public void testBox1(){

        StatisticsBoxInterface box = new StatisticsBox("Title", "1234");
        String html = box.renderBox(StyleWidth.Half, false);
        PukkaLogger.log(PukkaLogger.Level.INFO, "Box:" + html);
        html = box.renderElement();
        PukkaLogger.log(PukkaLogger.Level.INFO, "Element:" + html);

        //TODO: Add checks here

    }
}
