package backOffice.system;

import crm.*;
import dataRepresentation.DataObjectInterface;
import log.PukkaLogger;
import pukkaBO.acs.ACS_User;
import pukkaBO.acs.ACS_UserTable;
import pukkaBO.condition.LookupList;
import pukkaBO.formsPredefined.LoginForm;
import pukkaBO.password.PasswordManager;
import session.SessionStatusTable;
import session.SessionTable;
import siteBackend.*;
import pukkaBO.Charts.ChartInterface;
import pukkaBO.GenericPage.PageInterface;
import pukkaBO.backOffice.*;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.form.FormInterface;
import pukkaBO.links.LinkElement;
import pukkaBO.list.ListInterface;
import pukkaBO.pivot.PivotView;
import pukkaBO.renderer.TableRendererStarlightStatic;
import pukkaBO.scheduler.*;
import dataRepresentation.DataTableInterface;

import java.io.Serializable;
import java.util.Arrays;


/***************************************************************************'
 *
 *          Ragga System Backoffice
 *
 *          TODO:
 *
 *           - Break out Session management with a stripped user type to be reused for other applications
 *
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
                "Ragga System Back Office",                   // Caption
                "Welcome to the Ragga.nu admin",    // Welcome text
                new TableRendererStarlightStatic(this)                 // Table render logic to render all the tables
        );

        whiteList.allow("127.0.0.1");         // Local host for testing
        whiteList.allow("213.89.59.*");       // Linus Home


        // Set the menu structure

        menu = new Menu(

                // The menu is an array of sections.

                new Section[] {

                        // Home section
                        // A section is built by a section group list, link elements, lists and pivot tables

                    new pukkaBO.backOffice.Section("Home", "login.jsp", "table.jsp", Icon.Home,

                            new SectionGroups(

                                new SectionGroup[]{


                                }
                            ),

                        new LinkElement[] {

                                //new LinkElement("Form Example", "form.jsp?form=ExampleForm2&section=Home", ACS_Product.GENERAL, "An example form"),
                                //new LinkElement("Form Example",     new ExampleForm(this), ACS_Product.GENERAL),
                                //new LinkElement("Test Page",        new TestPage()),
                                //new LinkElement("Test Light box",   new TestLightbox()),

                        },
                        new ListInterface[] {

                                new SignificantEventList(this),
                                //new ExampleGroupList(this),
                        },
                        new PivotView[] {

                                /*
                                new PivotView("examplePivot", "An example pivot table", "ExamplePivotObject",
                                        1, 2, 4, 2,
                                        "Showing pivot functions"),
                                 */
                        }

                    ),

                        new pukkaBO.backOffice.Section("Support", "login.jsp", "table.jsp", Icon.DEFAULT,

                                new SectionGroups(


                                    new SectionGroup[]{

                                            new SectionGroup("Users and profiles",

                                                 new DataTableInterface[] {

                                                         new RaggaMemberTable( ),
                                                         new RaggaProfileDetailsTable( ),
                                                         new RaggaFavouriteTable( ),

                                                 }
                                             ),

                                           new SectionGroup("Communication",

                                                new DataTableInterface[] {

                                                        new RaggaMailTable( ),
                                                        new RaggaFlirtTable( ),
                                                        new RaggaAdTable( ),
                                                }
                                            ),

                                            new SectionGroup("Payments",

                                                 new DataTableInterface[] {

                                                         new RaggaSubscriptionTable( ),
                                                 }
                                             ),
                                            new SectionGroup("Sessions",

                                                 new DataTableInterface[] {

                                                         new SessionTable( ),
                                                         new SessionStatusTable( ),

                                                 }
                                             ),

                                    }
                                ),

                            new LinkElement[] {

                                    //new LinkElement( "Start new jobs",  "startScheduler.jsp"),

                            },
                            new ListInterface[] {
                                    //new SchedulerTool(this),

                            },
                            new PivotView[] {

                            }

                        ),




                    new pukkaBO.backOffice.Section("CRM", "login.jsp", "table.jsp", Icon.DEFAULT,

                            new SectionGroups(


                                new SectionGroup[]{

                                        new SectionGroup("Events",

                                             new DataTableInterface[] {

                                                     new SignificantEventTable( ),
                                                     new SignificantEventTypeTable( ),
                                                     new SignificantEventSignificanceTable( ),
                                                     new SignificantEventActionTable( ),
                                             }
                                         ),

                                   new SectionGroup("Users and Actions",

                                        new DataTableInterface[] {

                                                new CommunityMemberTable( ),
                                                new CommunityContactTable( ),
                                                new CommunityFriendTable( ),
                                                new CommunityLoginTable( ),
                                                new CommunityMessageTable( ),
                                                new CommunityPaymentTable( ),
                                        }
                                    ),
                                }
                            ),

                        new LinkElement[] {

                                //new LinkElement( "Start new jobs",  "startScheduler.jsp"),

                        },
                        new ListInterface[] {
                                new SchedulerTool(this),

                        },
                        new PivotView[] {

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


        };


        charts = new ChartInterface[] {


                };

        pages = new PageInterface[] {

        };



    }

    /*******************************************************************'
     *
     *      Values that will be set upon starting the system.
     *
     *
     *
     */


    public void populateSpecificValues() {

        PukkaLogger.log(PukkaLogger.Level.INFO, "Adding special values");

        // Generate encrypted passwords for the test users

        PasswordManager pwdManager = new PasswordManager();
        RaggaMemberTable allTestUsers = new RaggaMemberTable(new LookupList());

        try {

            for(DataObjectInterface object : allTestUsers.getValues()){

                RaggaMember user = (RaggaMember)object;

                byte[] salt = pwdManager.generateSalt();
                byte[] encodedPassword = pwdManager.getEncryptedPassword(user.getPassword(), salt);

                PukkaLogger.log(PukkaLogger.Level.INFO, "Encoding password " + user.getPassword() + " for user " + user.getUsername() + " to " + Arrays.toString(encodedPassword));


                user.setPassword(new String(encodedPassword, "ISO-8859-1"));
                user.setSalt(new String(salt, "ISO-8859-1"));
                user.update();


            }

            // Do the same thing for the ACS_Admin

            ACS_UserTable allAdminUsers = new ACS_UserTable(new LookupList());

            for(DataObjectInterface object : allAdminUsers.getValues()){

                ACS_User user = (ACS_User)object;

                byte[] salt = pwdManager.generateSalt();
                byte[] encodedPassword = pwdManager.getEncryptedPassword(user.getPassword(), salt);

                PukkaLogger.log(PukkaLogger.Level.INFO, "Encoding password " + user.getPassword() + " for user " + user.getName() + " to " + Arrays.toString(encodedPassword));


                user.setPassword(new String(encodedPassword, "ISO-8859-1"));
                user.setSalt(new String(salt, "ISO-8859-1"));
                user.update();


            }


        } catch (Exception e) {

            PukkaLogger.log(PukkaLogger.Level.INFO, "Failed to generate passwords for test users");
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }


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




