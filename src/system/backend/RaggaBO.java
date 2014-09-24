package system.backend;

import system.*;
import system.tables.*;
import pukkaBO.Charts.ChartInterface;
import pukkaBO.GenericPage.PageInterface;
import pukkaBO.acs.*;
import pukkaBO.backOffice.*;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.form.FormInterface;
import pukkaBO.formsPredefined.LoginForm;
import pukkaBO.links.LinkElement;
import pukkaBO.list.ListInterface;
import pukkaBO.pivot.PivotView;
import pukkaBO.renderer.TableRendererStarlightStatic;
import pukkaBO.scheduler.*;
import dataRepresentation.DataTableInterface;

import java.io.Serializable;


/***************************************************************************'
 *
 *          Very simple back office to test the different features.
 *
 *          //TODO: Change
 */


public class RaggaBO extends AppBackOffice implements BackOfficeInterface, Serializable {


    public RaggaBO(){

        this("backoffice.config");  // Default Configuration if no file is given

    }

    /*********************************************************
     *
     *          This is an example of how to set up a back office structure.
     *          The main data is passed to the menu.
     *
     */

    public RaggaBO(String configFile){

        // 1. Call super to load properties

        super(configFile);



        // 2. Set the style config with settings for the back-office

        styleConfig = new StyleConfiguration(
                "bootstrap",                                //TODO: Make this parameterized
                //properties.style,                           // Style
                "test/pukkaLogo.png",                       // Logo  TODO: Make the logo brand specific
                "Pukka Test Back Office",                   // Caption
                "Welcome to the Pukka demo back-office",    // Welcome text
                new TableRendererStarlightStatic(this)                 // Table render logic to render all the tables
        );

        // Set the menu structure

        menu = new Menu(

                // The menu is an array of sections.

                new Section[] {

                        // Home section
                        // A section is built by a section group list, link elements, lists and pivot tables

                    new pukkaBO.backOffice.Section("Home", "login.jsp", "table.jsp", Icon.Home,

                            new SectionGroups(

                                new SectionGroup[]{

                                   new SectionGroup("Example Tables",

                                        new DataTableInterface[] {

                                                new Example1Table( ),
                                                new DataReferenceTable( ),
                                                new Example3Table( ),
                                                new ExamplePivotSecondaryTable( ),
                                                new ExamplePivotObjectTable( ),
                                        }
                                    ),
                                }
                            ),

                        new LinkElement[] {

                                //new LinkElement("Form Example", "form.jsp?form=ExampleForm2&section=Home", ACS_Product.GENERAL, "An example form"),
                                //new LinkElement("Form Example",     new ExampleForm(this), ACS_Product.GENERAL),
                                new LinkElement("Test Page",        new TestPage()),
                                new LinkElement("Test Light box",   new TestLightbox()),

                        },
                        new ListInterface[] {

                                new ExampleList(this),
                                new ExampleGroupList(this),
                        },
                        new PivotView[] {

                                /*
                                new PivotView("examplePivot", "An example pivot table", "ExamplePivotObject",
                                        1, 2, 4, 2,
                                        "Showing pivot functions"),
                                 */
                        }

                    ),

                new pukkaBO.backOffice.Section("System", "login.jsp", "table.jsp", Icon.DEFAULT,

                        new SectionGroups(


                            new SectionGroup[]{

                               new SectionGroup("Job Scheduler",

                                    new DataTableInterface[] {

                                            //new ScheduledJobTable( ),
                                            //new SchedulerLogTable( ),
                                            //new ScheduledJobStatusTable( ),
                                            //new SelfTestTable( ),
                                    }
                                ),
                            }
                        ),

                    new LinkElement[] {

                            new LinkElement( "Start new jobs",  "startScheduler.jsp"),

                    },
                    new ListInterface[] {
                            new SchedulerTool(this),

                    },
                    new PivotView[] {

                    }

                ),

        },


                properties


        );

        // Add forms to the backoffice. These will be possible to lookup the same way as lists and tables.

        forms = new FormInterface[] {

          new LoginForm(),
          new ExampleForm(this),
          new ExampleForm2(this),
          new NewAccessObjectForm(this),

        };


        charts = new ChartInterface[] {

                        new TestChart(),        // Test bar chart
                        new TestChart2(),       // Test pie chart

                };

        pages = new PageInterface[] {

                new TestLightbox(),
                new TestPage(),        // Test bar chart
                new SchedulerPage(),

                //TODO: Removed for App
          //      new AccessAdminPage(this),  //TODO: Make this automatically added when using acs
        };


        // Finally; all tables can expose constants. These are loaded from the database upon startup

        //TODO: Removed for App
        //loadConstants();
        //startScheduler();  //TODO: Implement closing this before turning back on

    }

    /*******************************************************************'
     *
     *      Values that will be set upon starting the system.
     *
     *
     *
     */


    public void populateSpecificValues() {


        // Specific values for the test back office


    }


    /****************************************************************************************
     *
     *              Create the database and populate the default values
     *
     * @param args
     */


    public static void main(String[] args){

        BackOfficeInterface bo = new RaggaBO();
        bo.init();


    }

    public void init(){

        createDb();
        populateValues(false);
        populateSpecificValues();

    }


    public EventHandlerInterface getEventHandler() throws BackOfficeException {

        return null;
    }



}




