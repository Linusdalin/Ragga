package system;

import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.form.*;
import java.util.ArrayList;
import java.util.List;

/**
 *          Just a very simple form to illustrate the different constructions.
 *          This form can be accessed from the demo back-office
 *
 */

public class ExampleForm extends Form implements FormInterface, FormInternalInterface {

    public ExampleForm(BackOfficeInterface bo){

        name = "ExampleForm";
        title = "This is an example form.";

        try {


            List<FormFieldInterface> elements = new ArrayList<FormFieldInterface>();

            elements.add(new TextField("Nickname", "Nickname", "test", "nickname...", "The nickname is the name that is shown when playing the game.", 0, 20, 20));
            elements.add(new TextField("Email", "Email", "a@b.c", "pwd...", "The player's email address.", 0, 50, 20));

            elements.add(new Button("Search", FormPlacement.NEW_LINE, false));
            super.init(elements, FormInterface.STARLIGHT, null, bo, 0);
            setActionURL("", "search", true);

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


        return "No action defined for the form " + getName();
    }


}
