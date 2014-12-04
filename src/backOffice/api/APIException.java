package backOffice.api;

/**
 *
 *          !!This is the file
 *
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2014-09-26
 * Time: 07:51
 * To change this template use File | Settings | File Templates.
 */
public class APIException extends Exception {

    public static final int INTERNAL = 1;
    public static final int DUPLICATE = 2;

    private int type;
    public String narration;

    public APIException(String error){

        narration = error;
    }


    public APIException(int type, String s) {
        this.type = type;
        narration = s;
    }
}
