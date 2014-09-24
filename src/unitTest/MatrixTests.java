package unitTest;

import system.backend.RaggaBO;
import log.PukkaLogger;
import org.junit.BeforeClass;
import org.junit.Test;
import pukkaBO.acs.ACS_AccessTable;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.matrixEdit.MatrixEditView;
import dataRepresentation.ColumnDataInterface;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.*;


/**
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2013-01-03
 * Time: 07:53
 * To change this template use File | Settings | File Templates.
 */
public class MatrixTests {

    private static BackOfficeInterface bo;
    private static MatrixEditView acsMatrix;

    @BeforeClass
    public static void preamble(){

        bo = new RaggaBO();
        bo.createDb();
        bo.populateValues(true);

        acsMatrix = new MatrixEditView( new ACS_AccessTable(), 2, 1, 5, 3);

    }

    @Test
    public void testHeaders(){



        try {

            ColumnDataInterface[] zValues = acsMatrix.zColumn.getHeaders(bo);
            assertThat(zValues.length, is(3));

            // Now filter on the zColumn 0 = all

            ColumnDataInterface[] yValues = acsMatrix.yColumn.getHeaders(0, acsMatrix.zColumn, bo);
            assertThat(yValues.length, is(1));

            // There should be entry under link (tab 1)

            yValues = acsMatrix.yColumn.getHeaders(1, acsMatrix.zColumn, bo);
            assertThat(yValues.length, is(1));



        } catch (BackOfficeException e) {

            e.logError("Error creating ACSAdminPage");
            assertTrue(false);
        }


    }

    @Test
    public void testRender(){



        try {


            String html = acsMatrix.renderPivotView(0, "page", bo);
            PukkaLogger.log(PukkaLogger.Level.INFO, "Render(0): \n\n" + html);
            assertTrue(html.contains("<select id=\"dropdown_1_1\" class=\"\" name=\"dropdown_1_1\""));


            html = acsMatrix.renderPivotView(2, "page", bo);
            PukkaLogger.log(PukkaLogger.Level.INFO, "Render(2): \n\n" + html);
            assertTrue(html.contains("<select id=\"dropdown_2_1\" class=\"\" name=\"dropdown_2_1\""));
            assertTrue(html.contains("<td> <a href=\"?page=page&tab=2&action=pageSubmit&x=2&y=test&z=3\"> + </a> </td>"));



        } catch (BackOfficeException e) {

            e.logError("Error creating ACSAdminPage");
            assertTrue(false);
        }


    }


}
