package services;

import backOffice.api.ExternalEventHandler;
import backOffice.api.Formatter;
import backOffice.api.RaggaServlet;
import dataRepresentation.DBTimeStamp;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import pukkaBO.exceptions.BackOfficeException;
import siteBackend.RaggaMember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *          Servlet with a lot of faked data
 *
 */

public class MessageServlet extends RaggaServlet {

    public static final String DataServletName = "message";

    // Categories

    private static final int mail = 1;


    /**************************************************************'
     *
     * @param req
     * @param resp
     * @throws java.io.IOException
     *
     *
     */


    public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {

        try{

            logRequest(req);


            int category                    = (int)getMandatorylong("cat", req);
            String session                  = getMandatoryString("session", req);

            RaggaMember member = getUserFromSession(req);


            JSONObject json = new JSONObject();

            JSONArray list = getMessageList(member, category);

            json.put("messageList", list);

            sendJSONResponse(json, new Formatter(), resp);


        }catch(BackOfficeException e){

            returnError(e.narration, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, resp);
            e.printStackTrace(System.out);

        }

    }


    //TODO: Selection is not implemented. This is just placeholder

    private JSONArray getMessageList(RaggaMember member, int category) {

        switch (category){

            case mail:
            default:

                JSONArray list = new JSONArray();

                JSONObject testItem = new JSONObject()
                        .put("otherPart", 1)
                        .put("name", "Tristan")
                        .put("age", 36)
                        .put("sex", "Man")
                        .put("time", "2014-11-22 22:40")
                        .put("subject", "Hej")
                        .put("intro", "kanske intersserad?")
                        ;

                list.put(testItem);

                return list;
        }

    }
}
