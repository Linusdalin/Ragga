package system;

import pukkaBO.statisticsBox.StatisticsBox;
import pukkaBO.statisticsBox.StatisticsBoxInterface;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2012-11-29
 * Time: 15:18
 * To change this template use File | Settings | File Templates.
 */
public class ExampleStatisticsBox extends StatisticsBox implements StatisticsBoxInterface {

    public ExampleStatisticsBox(String title, String figure){


        super(title, figure, "");
    }
}
