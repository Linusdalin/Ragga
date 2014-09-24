package unitTest;

import system.backend.RaggaBO;
import log.PukkaLogger;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.renderer.TableRendererCSV;
import pukkaBO.renderer.TableRendererHTML;
import pukkaBO.renderer.TableRendererInterface;
import pukkaBO.renderer.TableRendererJSStatic;
import dataRepresentation.DataTableInterface;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

/**
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2011-11-25
 * Time: 14:45
 * To change this template use File | Settings | File Templates.
 */
public class renderTableTests{

    private static BackOfficeInterface backOffice = null;

    @BeforeClass
    public static void preAmble(){

        backOffice = new RaggaBO();
        backOffice.createDb();
        backOffice.populateValues(true);

    }

    @Test
    public void testRenderSimpleTable(){


        String html = loadAndRender("Example1");
        PukkaLogger.log(PukkaLogger.Level.INFO, html);

        assertNotNull(html);
        assertTrue(html.contains("<table"));

        String html2 = loadAndRender("Example2");
        PukkaLogger.log(PukkaLogger.Level.INFO, html2);

        assertNotNull(html2);


    }

    @Test
    public void testCsv(){

        DataTableInterface table = backOffice.getTableByName("Example1");
        TableRendererInterface renderer = new TableRendererCSV(backOffice);

        try{

            table.loadFromDatabase();
            String csv = renderer.getTableContent(table, "Home", true, true, true);
            assertNotNull(csv);

        }catch(BackOfficeException e){

            e.logError("Error rendering");
            assertTrue(false);

        }



    }


    @Test
    public void testHTMLTable(){

        DataTableInterface table = backOffice.getTableByName("Example1");
        TableRendererInterface renderer = new TableRendererHTML(backOffice);

        try{

            table.loadFromDatabase();
            String content = renderer.getTableContent(table, "Home", true, true, true);
            assertNotNull(content);
            String addLink = renderer.getAddLink(table);
            assertNotNull(addLink);
            assertFalse(addLink.equals(""));
            String pagination = renderer.getPagination("home", table.getTableName(), 1, 1, 20);
            assertNotNull(pagination);
            assertFalse(pagination.equals(""));

            String script = renderer.getTableScript(table);
            assertNotNull(script);

        }catch(BackOfficeException e){

            e.logError("Error rendering");
            assertTrue(false);

        }



    }

    @Test
    public void testJSStaticTable(){

        DataTableInterface table = backOffice.getTableByName("Example1");
        TableRendererInterface renderer = new TableRendererJSStatic(backOffice);

        try{

            table.loadFromDatabase();
            String content = renderer.getTableContent(table, "Home", true, true, true);
            assertNotNull(content);
            String addLink = renderer.getAddLink(table);
            assertNotNull(addLink);
            assertFalse(addLink.equals(""));
            String pagination = renderer.getPagination("home", table.getTableName(), 1, 1, 20);
            assertNotNull(pagination);

            String script = renderer.getTableScript(table);
            assertNotNull(script);

        }catch(BackOfficeException e){

            e.logError("Error rendering");
            assertTrue(false);

        }



    }


    private String loadAndRender(String tableName){

        String html = null;
        DataTableInterface tableObject = backOffice.getTableByName(tableName);
        TableRendererInterface renderer = backOffice.getRenderer();
        try{

            tableObject.loadFromDatabase();
            html = renderer.getTableContent(tableObject, "Home", true, true, true);

        }catch(BackOfficeException e){

            e.logError("Error rendering");
            assertTrue(false);

        }

        return html;

    }




}
