package unitTest;

import system.*;
import system.backend.RaggaBO;
import system.tables.DataReferenceTable;
import system.tables.Example1Table;
import system.tables.Example3Table;
import system.tables.ExamplePivotObjectTable;
import log.PukkaLogger;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.GenericPage.Lightbox;
import pukkaBO.backOffice.*;
import pukkaBO.links.LinkElement;
import pukkaBO.list.ListInterface;
import pukkaBO.pivot.PivotView;
import dataRepresentation.DataTableInterface;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

/**
 *
 * Basic backoffice tests
 */
public class backofficeTests {


    private static BackOfficeInterface bo;

    @BeforeClass
    public static void preAmble(){

        bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

    }


    @Test
    public void testSection(){

        // Create a test section

        Section s = null;

        try{

        s = new Section("Home", "login.jsp", "table.jsp", Icon.DEFAULT,

                            new SectionGroups(

                                new SectionGroup[]{

                                   new SectionGroup("Example Tables",

                                        new DataTableInterface[] {

                                                new Example1Table(),
                                                new DataReferenceTable(),
                                                new Example3Table(),
                                                new ExamplePivotObjectTable(),
                                        }
                                    ),
                                }
                            ),

                        new LinkElement[] {

                                new LinkElement("Form Example", "formTest.jsp?form=ExampleForm2&section=Home"),
                        },
                        new ListInterface[] {

                                new ExampleList(bo),
                        },
                        new PivotView[] {

                                new PivotView("examplePivot", "An example pivot table", new ExamplePivotObjectTable(), "Showing pivot functions"),
                        }

                    );

            assert(s != null);
            assert(s.getFrontPage().equals("table.jsp"));

            SectionGroups groups = s.getTablesGroups();

            assertThat(groups.tableGroups.length, is(1));

            SectionGroup g = groups.tableGroups[0];
            String name = g.getName();
            DataTableInterface[] tables = g.getTables();

            assert(name.equals("Example Tables"));
            assertThat(tables.length, is(4));



        }catch(Exception e){

            e.printStackTrace();
            assertTrue(false);
        }


    }

    @Test
    public void testShadowbox(){

        LightBox box = new LightBox();

        String link = Lightbox.getLink("url/target.jsp", "text", Lightbox.BIG);
        String link2 = Lightbox.getLink("url/target.jsp", "text", Lightbox.NORMAL);

        PukkaLogger.log(PukkaLogger.Level.INFO, "Link1:" + link);
        PukkaLogger.log(PukkaLogger.Level.INFO, "Link2:" + link2);

        assertTrue(link.contains("height=700"));
        assertTrue(link.contains("width=700"));
        assertTrue(link.contains("text</a>"));

        assertTrue(link2.contains("height=400"));
        assertTrue(link2.contains("width=600"));
        assertTrue(link2.contains("text</a>"));

    }


    /********************************************************************************
     *
     *      The self check shall return ok if the database is configured
     *
     */


    @Test
    public void testDatabaseCheck(){

        BackOfficeInterface bo2 = new RaggaBO("wrong config file");
        boolean isOk;

        isOk = bo2.checkDatabase();

        //assertFalse(isOk);

        bo2 = new RaggaBO();
        bo2.createDb();
        bo2.populateValues(true);

        isOk = bo2.checkDatabase();
        assertTrue(isOk);

    }



}
