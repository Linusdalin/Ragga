package system;

import pukkaBO.GenericPage.NarrowPage;

/**
 *
 * This is a generic page body component
 *
 */
public class TestPage extends NarrowPage {

    public TestPage(){

        super(  "testPage",
                "This is a page title");

        setSection("Home");

        //Adding tabs. TODO: Make these different. Now they have the same body

        addTab(new TestPageTab1("Tab1", "Headline 1"));
        addTab(new TestPageTab1("Tab2", "Headline 2"));
    }

}
