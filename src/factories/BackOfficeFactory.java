package factories;


import backOffice.system.RaggaBO;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2014-09-05
 * Time: 22:15
 * To change this template use File | Settings | File Templates.
 *
 *
 */

public class BackOfficeFactory {

    public static Object getBackOffice() {

        return new RaggaBO();
    }

    /************************************************************************************
     *
     *      Not to use
     *
     *
     * @param par
     */

    public static void main(String[] par){

        System.out.println("Not for use");
    }

}
