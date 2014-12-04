package backOffice.api;

import crm.CommunityMember;
import dataRepresentation.*;
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

public class MessageServlet extends RaggaServlet{

    public static final String DataServletName = "Message";
    private static final int NO_REPLY = -1;


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


            DBKeyInterface _from             = getMandatoryKey("from", req);
            DBKeyInterface _to               = getMandatoryKey("to", req);
            long messageId                   = getMandatorylong("messageId", req);
            long inReplyTo                   = getOptionalLong("inReplyTo", req, NO_REPLY);
            String msg                       = getOptionalString("msg", req, "");

            DBTimeStamp timeStamp = new DBTimeStamp();

            CommunityMember from = new CommunityMember(new LookupByKey(_from));
            CommunityMember to   = new CommunityMember(new LookupByKey(_to));

            String output;

            if(inReplyTo == NO_REPLY){

                output = eventHandler.registerMessage(from, to, (int)messageId, msg, timeStamp);

            }
            else{

                output = eventHandler.registerReply(from, to, (int)messageId, msg, timeStamp, (int)inReplyTo);

            }



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
