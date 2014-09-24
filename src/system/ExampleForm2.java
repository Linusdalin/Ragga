package system;

import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.form.*;

import java.util.ArrayList;
import java.util.List;

/**
 *          Just a very simple form to illustrate the different constructions.
 *          This form is only used in the Unit tests
 *
 */

public class ExampleForm2 extends Form implements FormInterface, FormInternalInterface {

    public ExampleForm2(BackOfficeInterface bo){

        name = "ExampleForm2";
        title = "This is an example form with all different fields.";

        try {


            List<FormFieldInterface> elements = new ArrayList<FormFieldInterface>();

            elements.add(new TextField("Nickname", "Nickname", "test", "", "The nickname is the name that is shown when playing the game.", 0, 20, 20));
            elements.add(new PwdField("Password", "Password", "", "The player's password.", 0, 50, 20));
            elements.add(new DateField("Date", "Date", ""));

            elements.add(new Button("Submit", FormPlacement.NEW_LINE, false));
            super.init(elements, FormInterface.SIMPLE, null, bo, 0);
            setActionURL("", "submit", true);

        } catch (BackOfficeException e) {

            e.logError("Error creating form");
        }
    }

    /************************************************************************
     *
     *          submitCallback is called from the the submit page when
     *          a form is submitted.
     *
     *
     * @param values - the values passed from the parameter list
     * @return - A message that shall be displayed after submission.
     * @throws BackOfficeException
     */


    public String submitCallBack( String[] values ) throws BackOfficeException{

        String valueList = "values from the form: <br>";

        for(String value : values){

            valueList += value + "<br>";
        }

        return valueList;
    }


}
