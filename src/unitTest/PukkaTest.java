package unitTest;

import log.PukkaLogger;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2013-03-16
 * Time: 13:19
 * To change this template use File | Settings | File Templates.
 */
public class PukkaTest {

    protected boolean contains(String s, String pattern){

        if(s.contains(pattern))
            return true;

        PukkaLogger.log(PukkaLogger.Level.INFO, "Error in matching. String \n\"" + s + "\"\n does not contain pattern:\n\"" + pattern + "\"");
        return false;
    }

    protected boolean notContains(String s, String pattern){

        if(!s.contains(pattern))
            return true;

        PukkaLogger.log(PukkaLogger.Level.INFO, "Error in matching. String \n\"" + s + "\"\n contains pattern:\n\"" + pattern + "\"");
        return false;
    }

}
