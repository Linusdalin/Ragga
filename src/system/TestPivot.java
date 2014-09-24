package system;

import system.tables.ExamplePivotObjectTable;
import pukkaBO.pivot.PivotPage;
import pukkaBO.pivot.PivotView;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2013-10-12
 * Time: 13:09
 * To change this template use File | Settings | File Templates.
 */

public class TestPivot extends PivotPage{

    public TestPivot(){

        super("Home",     new PivotView("examplePivot", "An example pivot table", new ExamplePivotObjectTable(),
                                                    1, 2, 4, 2,
                                                    "Showing pivot functions"));

    }


}
