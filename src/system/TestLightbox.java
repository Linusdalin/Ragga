package system;

import pukkaBO.GenericPage.Lightbox;

/**
 *
 *      This is a generic lightbox page body component
 *      As opposed to other pages, there is no need to set the section
 *      as there is no menu.
 *
 */


public class TestLightbox extends Lightbox {

    public TestLightbox(){

        // Create the lightbox

        super(  "testLightbox",
                Lightbox.BIG,
                "This is an example lightbox page");


        //Adding tabs. (Just like any page
        // TODO: Make these different in the example. Now they have the same body

        addTab(new TestPageTab1("Tab1", "Headline 1"));
        addTab(new TestPageTab1("Tab2", "Headline 2"));
    }

}
