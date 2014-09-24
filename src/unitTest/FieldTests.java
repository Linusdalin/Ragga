package unitTest;

import dataRepresentation.*;
import databaseLayer.DBKeyInterface;
import databaseLayer.SQLKey;
import org.junit.Test;

import pukkaBO.exceptions.BackOfficeException;


import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

/**
 *
 *      Basic unit tests for the field types
 */

public class FieldTests {

    @Test
    public void testString(){

        String name = "theString";
        String value = "StringText";

        StringColumn column = new StringColumn(name, new DisplayFormat(DisplayFormat.SMALL));
        assertThat(column.getFormat().width, is(DisplayFormat.SMALL));
        assertThat(column.getType().name(), is("STRING"));
        assertThat(column.isStringValue(), is(true));

        StringData columnData = new StringData(value);

        //Test casting to different types
        assertThat(columnData.getStringValue(), is(value));
        assertThat(columnData.getIntValue(), is((long)0));
        assertThat(columnData.getBoolValue(), is(false));
        assertThat(columnData.getCompareValue(), is("'"+ value +"'"));

    }


    @Test
    public void testText(){

        String name = "theText";
        String value = "TextText";

        TextColumn column = new TextColumn(name, new DisplayFormat(DisplayFormat.SMALL));
        assertThat(column.getFormat().width, is(DisplayFormat.SMALL));
        assertThat(column.getType().name(), is("TEXT"));
        assertThat(column.isStringValue(), is(true));

        TextData columnData = new TextData(value);

        //Test casting to different types
        assertThat(columnData.getStringValue(), is(value));
        assertThat(columnData.getIntValue(), is((long)0));
        assertThat(columnData.getBoolValue(), is(false));
        assertThat(columnData.getCompareValue(), is("'"+ value +"'"));

    }

    @Test
    public void testBlob(){

        String name = "theBlob";
        String value = "BlobText";

        BlobColumn blob = new BlobColumn(name, new DisplayFormat(DisplayFormat.SMALL));
        assertThat(blob.getFormat().width, is(DisplayFormat.SMALL));
        assertThat(blob.getType().name(), is("BLOB"));
        assertThat(blob.isStringValue(), is(true));

        BlobData blobData = new BlobData(value);

        //Test casting to different types
        assertThat(blobData.getStringValue(), is(value));
        assertThat(blobData.getIntValue(), is((long)0));
        assertThat(blobData.getBoolValue(), is(false));
        assertThat(blobData.getCompareValue(), is("'"+ value +"'"));

    }


    @Test
    public void testClass(){

        String name = "theClass";
        String value = "theValue";

        ClassColumn classColumn = new ClassColumn(name, new DisplayFormat(DisplayFormat.SMALL));
        assertThat(classColumn.getFormat().width, is(DisplayFormat.SMALL));
        assertThat(classColumn.getType().name(), is("CLASS"));
        assertThat(classColumn.isStringValue(), is(true));

        ClassData classData = new ClassData(value);

        //Test casting to different types
        assertThat(classData.getStringValue(), is(""+ value));
        assertThat(classData.getIntValue(), is((long)0));
        assertThat(classData.getStringValue(), is(value));
        assertThat(classData.getCompareValue(), is("'"+ value + "'"));

    }

    @Test
    public void testBool(){

        String name = "theCheckbox";
        boolean value = true;

        BoolColumn bool = new BoolColumn(name, new DisplayFormat(DisplayFormat.SMALL));
        assertThat(bool.getFormat().width, is(DisplayFormat.SMALL));
        assertThat(bool.getType().name(), is("BOOLEAN"));
        assertThat(bool.isStringValue(), is(false));

        BoolData boolData = new BoolData(value);

        //Test casting to different types
        assertThat(boolData.getStringValue(), is(""+ value));
        assertThat(boolData.getIntValue(), is((long)0));
        assertThat(boolData.getBoolValue(), is(value));
        assertThat(boolData.getCompareValue(), is(""+ value));

    }

    @Test
    public void testInt(){

        String name = "theInt";
        int value = 4711;

        IntColumn i = new IntColumn(name, new DisplayFormat(DisplayFormat.SMALL));
        assertThat(i.getFormat().width, is(DisplayFormat.SMALL));
        assertThat(i.getType().name(), is("INT"));
        assertThat(i.isStringValue(), is(false));

        IntData intData = new IntData(value);

        //Test casting to different types
        assertThat(intData.getStringValue(), is(""+ value));
        assertThat(intData.getIntValue(), is((long)value));
        assertThat(intData.getBoolValue(), is(false));
        assertThat(intData.getCompareValue(), is(""+ value));

    }

    @Test
    public void testTable(){

        try {

            String name = "theTable";
            DBKeyInterface value = new SQLKey(4711);
            TableReference reference = new TableReference("otherTable", "col");

            ReferenceColumn i = new ReferenceColumn(name, new DisplayFormat(DisplayFormat.SMALL), reference);
            assertThat(i.getFormat().width, is(DisplayFormat.SMALL));
            assertThat(i.getType().name(), is("TABLE"));
            assertThat(i.isStringValue(), is(false));

            ReferenceData referenceData = null;
            referenceData = new ReferenceData(value, reference);

            //Test casting to different types
            assertThat(referenceData.getStringValue(), is(""+ value));
            //assertThat(referenceData.getIntValue(), is(value.id));
            assertThat(referenceData.getBoolValue(), is(false));
            assertThat(referenceData.getCompareValue(), is(""+ value));

        } catch (BackOfficeException e) {
            e.printStackTrace();
            assertTrue(false);
        }

    }

    //TODO:    CURRENCY,       // Currency represented ac cent value
    //TODO:    IMAGE,          // Storing an image (with rendering capacity)
    //TODO:    TIME,           // hh:mm:ss
    //TODO:    DATE,           // yyyy:mm:dd
    //TODO:    TIMESTAMP,      // yyyy:mm:dd hh:mm:ss



}
