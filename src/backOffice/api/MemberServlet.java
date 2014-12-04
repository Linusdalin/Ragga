package backOffice.api;

import dataRepresentation.DBTimeStamp;
import databaseLayer.DBKeyInterface;
import net.sf.json.JSONObject;
import pukkaBO.exceptions.BackOfficeException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2014-09-26
 * Time: 10:08
 * To change this template use File | Settings | File Templates.
 *
 */

public class MemberServlet extends RaggaServlet{

    public static final String DataServletName = "User";


    /**************************************************************'
     *
     *          Create a new user
     *
     * @param req
     * @param resp
     * @throws IOException
     */


    public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {

        try{

            logRequest(req);

            ExternalEventHandler eventHandler = new ExternalEventHandler();

            String username          = getMandatoryString("Username", req);
            String first             = getMandatoryString("First", req);
            String last              = getMandatoryString("Last", req);
            String email             = getMandatoryString("Email", req);
            String externalId        = getMandatoryString("ExternalId", req);
            String sex               = getMandatoryString("Sex", req);
            String tag               = getMandatoryString("Tag", req);

            DBTimeStamp registration = new DBTimeStamp();

            DBKeyInterface newUser = eventHandler.registerUser(username, first, last, false, email, sex, "", "", "", "", "", "", true, externalId, tag, "", registration);

            JSONObject json = new JSONObject()
                    .put(DataServletName, newUser.toString());

            sendJSONResponse(json, new Formatter(), resp);

        }catch(BackOfficeException e){

            returnError(e.narration, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, resp);
            e.printStackTrace(System.out);

        }catch(APIException e){

            returnError(e.narration, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, resp);
            e.printStackTrace(System.out);

        }


    }
}
