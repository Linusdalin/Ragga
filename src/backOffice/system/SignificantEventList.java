package backOffice.system;

import crm.SignificantEvent;
import crm.SignificantEventTable;
import dataRepresentation.DataObjectInterface;
import dataRepresentation.DataTableInterface;
import dataRepresentation.DisplayFormat;
import databaseLayer.DBKeyInterface;
import pukkaBO.backOffice.BackOfficeInterface;
import pukkaBO.backOffice.Icon;
import pukkaBO.condition.LookupByKey;
import pukkaBO.condition.Ordering;
import pukkaBO.condition.Sorting;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.list.*;
import pukkaBO.renderer.ListRendererInterface;
import pukkaBO.renderer.ListRendererJSStatic;
import pukkaBO.style.Html;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


/**
 *
 *          Document list
 *
 *
 *
 */


public class SignificantEventList extends GroupByList implements ListInterface{

    // General definitions for the example list

    public static final String Name = "SignificantEventList";
    public static final String Title = "Significant Events";
    public static final String Description = "Significant Events in the system";

    // ids for the callback actions

    public static final int Callback_Action_Execute     = 1;
    public static final int Callback_Action_Ignore      = 2;
    public static final int Callback_Action_Undo        = 3;

    public static final ListRendererInterface Renderer = new ListRendererJSStatic();

    private static final DataTableInterface table = new SignificantEventTable();


    public SignificantEventList(BackOfficeInterface backOffice){

        List<ListColumnInterface> columnStructure = new ArrayList<ListColumnInterface>() {{

            add(new ListTableColumn( 1, table ).withNameFromTableColumn().withFormat(new DisplayFormat(DisplayFormat.SMALL)));
            add(new ListTableColumn( 2, table ).withNameFromTableColumn().withFormat(new DisplayFormat(DisplayFormat.WIDE)));
            add(new ListTableColumn( 3, table ).withNameFromTableColumn());
            add(new ListTableColumn( 4, table ).withNameFromTableColumn());
            add(new ListTableColumn( 5, table ).withNameFromTableColumn());
            add(new ListTableColumn( 6, table ).withNameFromTableColumn());
            add(new ListTableColumn( 7, table ).withNameFromTableColumn());
            add(new ListTableColumn( 8, table ).withNameFromTableColumn());

        }};




        init(Name, Title, Description, backOffice, Renderer);

        // Set the table to draw the data from.

        initiateTable( table, columnStructure);


        init(Name, Title, Description, backOffice, Renderer);

        // Set the table to draw the data from.

        setSorting(new Sorting(SignificantEventTable.Columns.Time.name(), Ordering.FIRST));   //Ordered by time

        // Add actions to each element. In this example we have multiple actions.
        // They may however not all be present in all states.

        //actions.add(new ListAction(Callback_Action_Do,        ActionType.List, "Do").setIcon(Icon.Check));

        actions.add(new ListAction(Callback_Action_Execute,         ActionType.List, "Execute").setIcon(Icon.Alarm));
        actions.add(new ListAction(Callback_Action_Ignore,          ActionType.List, "Ignore").setIcon(Icon.Archive));
        actions.add(new ListAction(Callback_Action_Undo,            ActionType.List, "Undo").setIcon(Icon.Return));

        // Set the number of elements to display
        displaySize = 20;                                 //TODO: Size not implemented in the Starlight table
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

        SignificantEvent event = (SignificantEvent)object;
        int status = (int)event.getStatus();

        switch(status){

            case SignificantEvent.EXECUTED:
                return DisplayHighlight.Done;
            case SignificantEvent.FYI:
                return DisplayHighlight.FYI;
            case SignificantEvent.IGNORED:
                return DisplayHighlight.Done;
            case SignificantEvent.REQUIRES_ACTION:
                return DisplayHighlight.RequireAction;
            case SignificantEvent.SEEN:
                return DisplayHighlight.Done;
        }

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

        SignificantEvent event = new SignificantEvent(new LookupByKey( key ));

        try{

            switch(action){

                case Callback_Action_Execute:

                    int initialStatus = (int)event.getStatus();

                    event.setStatus(SignificantEvent.EXECUTED);
                    event.update();

                    if(initialStatus == SignificantEvent.FYI)
                        return "";
                    else
                        return "Warning: No action defined for event " + event.getType().getName();

                case Callback_Action_Ignore:

                    event.setStatus(SignificantEvent.IGNORED);
                    event.update();

                    return "";

                case Callback_Action_Undo:

                    event.setStatus(SignificantEvent.FYI);
                    event.update();

                    return "Warning: Action cant be undone. Setting to FYI";


            }

        }catch(BackOfficeException e){

            // Handle exception here
        }

        return Html.errorBox("No action performed...");

    }



    @Override
    public boolean hasAction(int action, DataObjectInterface object){

        SignificantEvent event = (SignificantEvent)object;
        int status = (int)event.getStatus();

        switch(action){

            case Callback_Action_Execute:

                return(status == SignificantEvent.FYI || status == SignificantEvent.REQUIRES_ACTION);

            case Callback_Action_Ignore:

                return(status == SignificantEvent.REQUIRES_ACTION);

            case Callback_Action_Undo:

                return(status == SignificantEvent.IGNORED || status == SignificantEvent.SEEN || status == SignificantEvent.EXECUTED);

        }

        return false;

    }


    @Override
    public String addForm(String section)throws BackOfficeException{

        return "";
    }

    @Override
    public String submit(HttpServletRequest request){


        return "Error: Not implemented submit";
    }






}
