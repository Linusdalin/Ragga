package services;

import backOffice.api.ExternalEventHandler;
import backOffice.api.Formatter;
import backOffice.api.RaggaServlet;
import net.sf.json.JSONArray;
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

public class AdServlet extends RaggaServlet {

    public static final String DataServletName = "Ad";

    /**************************************************************'
     *
     *          Ads
     *
     * @param req
     * @param resp
     * @throws java.io.IOException
     */


    public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {

        try{

            logRequest(req);

            ExternalEventHandler eventHandler = new ExternalEventHandler();

            int user                      = (int)getOptionalLong("user", req, 0);


            JSONArray output;

            output = getAdList(user);


            JSONObject json = new JSONObject().put(DataServletName, output);

            sendJSONResponse(json, new Formatter(), resp);


        }catch(BackOfficeException e){

            returnError(e.narration, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, resp);
            e.printStackTrace(System.out);

        }

    }

    // TODO: Filter on user not implemented

    private JSONArray getAdList(int user) {

        JSONArray list = new JSONArray();

        JSONObject testItem = new JSONObject()
                .put("id", 1)
                .put("category", "Kille söker Tjej")
                .put("title", "Träffa mig?")
                .put("text", "...")
                ;

        list.put(testItem);

        JSONObject testItem2 = new JSONObject()
                .put("id", 2)
                .put("name", "Kvinna söker Par")
                .put("title", "Kanske vi tre...?")
                .put("text", "...")
                ;

        list.put(testItem2);

        return list;

    }
}
