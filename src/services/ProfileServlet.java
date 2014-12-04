package services;

import backOffice.api.ExternalEventHandler;
import backOffice.api.Formatter;
import backOffice.api.RaggaServlet;
import dataRepresentation.DBTimeStamp;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import pukkaBO.exceptions.BackOfficeException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *          Servlet with a lot of faked data
 *
 */

public class ProfileServlet extends RaggaServlet {

    public static final String DataServletName = "profile";

    // Types

    private static final int miniPictures = 1;
    private static final int CommunicationUpdate = 2;
    private static final int ProfileInfo = 3;
    private static final int ProfileCommunication = 4;

    // Selections

    private static final int latestPictures = 1;
    private static final int latestRegistered = 2;


    /**************************************************************'
     *
     * @param req
     * @param resp
     * @throws java.io.IOException
     *
     *
     *      //TODO: Get user for session
     */


    public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {

        try{

            logRequest(req);

            ExternalEventHandler eventHandler = new ExternalEventHandler();

            int type                      = (int)getMandatorylong("type", req);
            int selection                 = (int)getOptionalLong("selection", req, 0);
            int userId = 0;
            DBTimeStamp since = new DBTimeStamp();
            JSONObject json;

            switch(type){

                case miniPictures:

                    JSONArray list = getPictureList(selection);
                    json = new JSONObject().put(DataServletName, list);
                    break;

                case CommunicationUpdate:

                    userId = 1;   //TODO: Get user for session
                    since = new DBTimeStamp(DBTimeStamp.ISO_DATE, "2014-06-05");    //TODO: Get timestamp from last session
                    JSONObject update = getCommunicationSinceForUser(userId, since);
                    json = new JSONObject().put(DataServletName, update);
                    break;

                case ProfileInfo:

                    userId = 1;   //TODO: Get user for session
                    JSONObject profile = getProfileInfoForUser(userId);
                    json = new JSONObject().put(DataServletName, profile);
                    break;

                case ProfileCommunication:

                    userId = 1;   //TODO: Get user for session
                    JSONObject communication = getCommunicationSinceForUser(userId, null);
                    json = new JSONObject().put(DataServletName, communication);
                    break;

                default:
                    returnError("Unknown type", HttpServletResponse.SC_BAD_REQUEST, resp);
                    return;
            }



            sendJSONResponse(json, new Formatter(), resp);


        }catch(BackOfficeException e){

            returnError(e.narration, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, resp);
            e.printStackTrace(System.out);

        }

    }

    //TODO: Not implemented

    private JSONObject getProfileInfoForUser(int userId) {


        JSONObject profile = new JSONObject()
                    .put("name", "Kalle Anka")
                    .put("completion", "55")
                ;

        return profile;

    }

    //TODO: Not implemented

    private JSONObject getCommunicationSinceForUser(int user, DBTimeStamp since) {

        JSONObject update;

        if(since == null){

            update = new JSONObject()
                    .put("members", 1200)
                    .put("visits", 37)
                    .put("favourites", 2)
                    .put("flirts", 10)
                    .put("messages", 1)
                    .put("posts", 2);
        }
        else{

            update = new JSONObject()
                    .put("members", 40)
                    .put("visits", 2)
                    .put("favourites", 1)
                    .put("flirts", 5)
                    .put("messages", 1)
                    .put("posts", 2);
        }



        JSONObject profile = new JSONObject()
                .put("lastLogin", "2014-07.07 18:50")
                .put("online", "21")
                .put("update", update );

        return profile;
    }

    //TODO: Selection is not implemented. This is just placeholder

    private JSONArray getPictureList(int selection) {

        JSONArray list = new JSONArray();

        JSONObject testItem = new JSONObject()
                .put("id", 1)
                .put("name", "Tristan")
                .put("age", 36)
                .put("sex", "Man")
                .put("city", "Stockholm")
                ;

        list.put(testItem);

        JSONObject testItem2 = new JSONObject()
                .put("id", 2)
                .put("name", "Isolde")
                .put("age", 36)
                .put("sex", "Kvinna")
                .put("city", "Stockholm")
                ;

        list.put(testItem2);

        return list;

    }
}
