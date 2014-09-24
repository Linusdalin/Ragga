package system;

import system.tables.ExamplePivotObjectTable;
import pukkaBO.pivot.PivotPage;
import pukkaBO.pivot.PivotSelection;
import pukkaBO.pivot.PivotView;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2013-10-12
 * Time: 13:09
 * To change this template use File | Settings | File Templates.
 */

public class ExamplePivotPage extends PivotPage{

    public ExamplePivotPage(){

        super("Home",     new PivotView("examplePivot", "Pivot Table test", new ExamplePivotObjectTable(),
                                                    1, 2, 3, PivotSelection.Count+1, //TODO: Refactor this +1...
                                                    "Showing pivot functions and examples"));

    }


}
