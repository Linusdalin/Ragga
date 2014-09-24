package unitTest;

import static junit.framework.Assert.assertFalse;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

/**
 * Created by IntelliJ IDEA.
 * User: linus.dalin
 * Date: 2012-04-22
 * Time: 18:49
 * To change this template use File | Settings | File Templates.
 */

public class generateTest{


/*
public class generateTest extends GenerateTable{



    static String curDir;

    private static final String Name = "DataReference";
    private static final String Title = "Referencing Data Object";
    private static final String JavaPackage = "boBean";
    private static final String Description = "Test For Generation";

    private static final GenerateTableType Type = GenerateTableType.APPTable;  //Type to generate. App or SQL


    private static final ColumnStructureInterface[] Structure = new ColumnStructureInterface[] {

            new StringColumn("Event",           DataColumn.noFormatting),
            new StringColumn("EventDataData",   DataColumn.noFormatting),
            new IntColumn("value",              DataColumn.noFormatting),
            new TimeStampColumn("TimeStamp",    DataColumn.noFormatting),
            new DateColumn("Date",              DataColumn.noFormatting),
            new CurrencyColumn("Amount",        DataColumn.noFormatting),

    };



    public generateTest() {
        super(Name, Title, JavaPackage, Description, Type, Structure );
    }

    @BeforeClass
    public static void preamble(){

        curDir = System.getProperty("user.dir") + "\\out\\";
        PukkaLogger.log(PukkaLogger.Level.INFO, "Reading config from " + curDir);

    }

    //Simulates the generated Java code and returns the output to the screen.

    @Test
    public void testCompile(){



        String dataObject = createDataObject();
        String dataTable  = createDataObjectTable();

        PukkaLogger.log(PukkaLogger.Level.INFO, "dataObject:\n\n" + dataObject + "\n\n");
        PukkaLogger.log(PukkaLogger.Level.INFO, "dataTable:\n\n" + dataTable + "\n\n");

        // Check the signatures. If these are chenged, we risk to fail in all the generator sub-classes

        assertTrue(dataObject.contains("public DataReference(){"));
        assertTrue(dataObject.contains("public DataReference(String event, String eventdatadata, int value, String timestamp, String date, int amount) throws BackOfficeException{"));
        assertTrue(dataObject.contains("public DataReference(ConditionInterface condition){"));

        assertTrue(dataObject.contains("data[1] = new StringData(eventdatadata);"));
        assertTrue(dataObject.contains("data[2] = new IntData(value);"));
        assertTrue(dataObject.contains("data[3] = new TimeStampData(timestamp);"));
        assertTrue(dataObject.contains("data[4] = new DateData(date);"));
        assertTrue(dataObject.contains("data[5] = new CurrencyData(amount);"));

        assertTrue(dataObject.contains("public DataObjectInterface createNew(ColumnDataInterface[] data ) throws BackOfficeException {"));
        assertTrue(dataObject.contains("public String getEvent(){"));
        assertTrue(dataObject.contains("public void setEvent(String event){"));


        assertTrue(dataTable.contains("public DataReferenceTable(){"));
        assertTrue(dataTable.contains("public DataReferenceTable(ACS_User adminUser, ConditionInterface condition){"));

        assertFalse(dataObject.contains("<unknown>"));
        assertFalse(dataTable.contains("<unknown>"));

        compile(Name, dataObject);
        compile(Name + "Table", dataTable);


    }

    /*******************************************************************
     *
     *      Trying to compile the file and check that there are no errors.
     *      It will write the file to curDir before compiling it.
     *
     * @param name - name of the file to compile
     * @param dataObject - the source to compile
     */


    public void compile(String name, String dataObject){

                /*

        try{

          // Create file

          FileWriter fStream = new FileWriter(curDir + name + ".java");
          BufferedWriter out = new BufferedWriter(fStream);

          //Write and then close the output stream
          out.write(dataObject);
          out.close();

          }catch (Exception e){

            System.err.println("Error in compile: " + e.getMessage());
          }


        JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();


        if(compiler.run(null, null, null, curDir + name+".java") != 0) {

            System.err.println("Could not compile.");
            assertTrue(false);
        }

        */
    }

}
