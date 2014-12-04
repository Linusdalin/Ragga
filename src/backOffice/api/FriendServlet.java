package backOffice.api;

import crm.CommunityMember;
import dataRepresentation.DBTimeStamp;
import databaseLayer.DBKeyInterface;
import net.sf.json.JSONObject;
import pukkaBO.condition.LookupByKey;
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

public class FriendServlet extends RaggaServlet{

    public static final String DataServletName = "Friend";


    /**************************************************************'
     *
     *          Create a new user
     *
     *          // TODO: Add mandatory object check
     *          //TODO: Add optional time for backdate
     * @param req
     * @param resp
     * @throws java.io.IOException
     */


    public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {

        try{

            logRequest(req);

            ExternalEventHandler eventHandler = new ExternalEventHandler();

            DBKeyInterface _member              = getMandatoryKey("member", req);
            DBKeyInterface _friend              = getMandatoryKey("friend", req);

            DBTimeStamp timeStamp = new DBTimeStamp();

            CommunityMember member = new CommunityMember(new LookupByKey(_member));
            CommunityMember friend = new CommunityMember(new LookupByKey(_friend));

            String output = eventHandler.registerFriend(member, friend, timeStamp);


            JSONObject json = new JSONObject()
                    .put(DataServletName, output);

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
