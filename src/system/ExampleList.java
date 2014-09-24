package system;

import dataRepresentation.DataObjectInterface;
import dataRepresentation.DataTableInterface;
import databaseLayer.DBKeyInterface;
import system.tables.Example1;
import system.tables.Example1Table;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.condition.LookupByKey;
import pukkaBO.condition.Ordering;
import pukkaBO.condition.Sorting;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.formsPredefined.TableEditForm;
import pukkaBO.list.*;
import pukkaBO.renderer.ListRendererInterface;
import pukkaBO.renderer.ListRendererJSStatic;

import javax.servlet.http.HttpServletRequest;


/**
 *
 *      An example list. It shows objects of the type Example1
 *      and allows for actions on them.
 *
 *      There are four action callbacks for this list example:
 *
 *       - Do           - Typically used to perform a main action on the item
 *       - Undo         - Typically reversing the Execute()
 *       - View         - opening a separate view for this specific item
 *       - Add          - Allowing to create a new one
 *
 *
 *       The actions operate on the data in the associated table. In this
 *       example, it uses a field called state.
 *
 *       There list also uses DisplayHighlight to define the style of each item, The
 *       different styles are:
 *
 *          RequireAction,          // Strong highlight, requires action
 *          FYI,                    // Normal
 *          Done,                   // Grey, already taken care of
 *          PositiveAlert,          // Green bold
 *          Alert,                  // Red bold
 *
 */


public class ExampleList extends SimpleList implements ListInterface{

    // General definitions for the example list

    public static final String Name = "TestList";
    public static final String Title = "Test List";
    public static final String Description = "A Test List";


    // Renderer. It is possible to inject another renderer implementation here

    public static final ListRendererInterface Renderer = new ListRendererJSStatic();

    // ids for the callback actions

    public static final int Callback_Action_Do      = 1;
    public static final int Callback_Action_Undo    = 2;
    public static final int Callback_Action_View    = 3;
    public static final int Callback_Action_Add     = 4;

    public ExampleList(BackOfficeInterface backOffice){


        init(Name, Title, Description, backOffice, Renderer);

        // Set the table to draw the data from.

        initiateTable(
                new Example1Table(),              // The table
                new int[]{1}                      // Use only column 1

        );

        setSorting(new Sorting(Example1Table.Columns.Name.name(), Ordering.FIRST));

        // Add actions to each element. In this example we have multiple actions.
        // They may however not all be present in all states.

        actions.add(new ListAction(Callback_Action_Do,        ActionType.List, "Do"));
        actions.add(new ListAction(Callback_Action_Undo,      ActionType.List, "Undo"));
        actions.add(new ListAction(Callback_Action_View,      ActionType.Item, "View"));

        // Add an add action
        setAddAction(new ListAction(Callback_Action_Add,      ActionType.Add, "Create new"));

        // Set the number of elements to display
        setDisplaySize(20);
    }


    /*************************************************************************'
     *
     *
     *          getHighlight - this is the logic for the list defining how the
     *          item (row) shall be displayed.
     *
     *          The logic is normally defined by the content in the table.
     *
     * @param object - The object on which the selection is done
     * @return - the enum defining the class
     *
     */

    @Override
    public DisplayHighlight getHighlight(DataObjectInterface object){

        Example1 exampleData = (Example1)object;

        if(exampleData.getStatus() == 1)
            return DisplayHighlight.RequireAction;

        if(exampleData.getStatus() == 2 )
            return DisplayHighlight.Done;


        return DisplayHighlight.FYI;
    }


    /********************************************************************
     *
     *          Callback implementation.
     *
     *
     *
     *
     * @param action - the callback action as defined by the actions
     * @param key - the object on the selected row
     *
     * @return - text to be displayed. The interpretation will be different depending on the action type.
     */

    @Override
    public String callBack(int action, DBKeyInterface key, String section, HttpServletRequest request){


        Example1 exampleItem = new Example1(new LookupByKey(key));

        try{

            switch(action){

                case Callback_Action_Add:

                    //Store the object here.

                    exampleItem.store();

                    // This is a add type so the return value will be a confirmation box

                    return "Success:New element added";

                case Callback_Action_Do:

                    // Here we can perform an action

                    exampleItem.setStatus(2);
                    exampleItem.update();


                    // This is a list type, so the return value will be a confirmation box.
                    // Return null for no dialogue

                    return "Success:I did " + exampleItem.getName();

                case Callback_Action_Undo:

                    // Here we can perform an action

                    exampleItem.setStatus(1);
                    exampleItem.update();

                    // This is a list type, so the return value will be a confirmation box.
                    // Return null for no dialogue

                    return "Success:I undid " + exampleItem.getName();

                case Callback_Action_View:

                    // This is a view type, so the return value will be the content of an html page.
                    // Returning null here would be an error

                    return "This is a detailed view on a separate page with  " + exampleItem.getName();
            }

        }catch(BackOfficeException e){

            // Handle exception here
        }

        return "No action performed...";

    }


    @Override
    public boolean hasAction(int action, DataObjectInterface object){

        Example1 exampleData = (Example1)object;

        if(exampleData.getStatus() == 1 && action == Callback_Action_Undo)
            return false;

        if(exampleData.getStatus() == 2 && action == Callback_Action_Do)
            return false;


        return true;

    }


    @Override
    public String addForm(String section)throws BackOfficeException{

        DataTableInterface table = new Example1Table();
        String html = new TableEditForm(table, null, TableEditForm.FormType.ADD, backOffice, section, "&list=" + Name).renderForm("", 0);

        return html;
    }

    @Override
    public String submit(HttpServletRequest request){

        try{

            DataObjectInterface object = table.getDataObject(request);
            object.store();
            return ("A new entry with id " + object.getKey() + " was created");

        }
        catch(BackOfficeException e){

            System.out.println("Error adding element " + e.narration);
            e.printStackTrace();
        }

        return "Could not create Item...";
    }




}
