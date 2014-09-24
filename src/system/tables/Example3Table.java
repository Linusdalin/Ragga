package system.tables;

import dataRepresentation.*;
import pukkaBO.exceptions.BackOfficeException;
import pukkaBO.condition.*;

/********************************************************
 *
 *    Example3 - Data Table
 *    Automatically generated file by GenerateTable.java
 *
 *
 */

public class Example3Table extends DataTable implements DataTableInterface{

    private static final String TITLE = "All basic types";
    public static final String TABLE = "Example3";
    private static final String DESCRIPTION = "this is the description";

    public enum Columns {Name, LongText, BlobLength, Number, isActive, last, first, }

    private static final ColumnStructureInterface[] DATA = new ColumnStructureInterface[] {

            new StringColumn("Name", DataColumn.noFormatting),
            new TextColumn("LongText", DataColumn.noFormatting),
            new BlobColumn("BlobLength", DataColumn.noFormatting),
            new IntColumn("Number", DataColumn.noFormatting),
            new BoolColumn("isActive", DataColumn.noFormatting),
            new TimeStampColumn("last", DataColumn.noFormatting),
            new DateColumn("first", DataColumn.noFormatting),
    };

    private static final Example3 associatedObject = new Example3();
    public Example3Table(){

        init(DATA, associatedObject, TABLE, TITLE, DESCRIPTION, DefaultValues, TestValues);
         /* No name column set for table. Using default ( 1 ) */
         // Not set as external
        // Not a constant table
    }

    public Example3Table(ConditionInterface condition){

        this();
        try{

            values = load(condition);
        }
        catch(BackOfficeException e){

            System.out.println("Error loading table values " + e.narration);
        }

    }
    private static final String[][] DefaultValues = {




    };
    private static final String[][] TestValues = {




    };

    /* Code below this point will not be replaced when regenerating the file*/

    /*__endAutoGenerated*/




}