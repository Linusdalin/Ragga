package session;

import backOffice.api.ExternalEventHandler;
import backOffice.api.Formatter;
import backOffice.api.RaggaServlet;
import dataRepresentation.DBTimeStamp;
import log.PukkaLogger;
import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import pukkaBO.exceptions.BackOfficeException;
import session.Session;
import siteBackend.RaggaMember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *          Login servlet
 *
 */

public class LoginServlet extends RaggaServlet {

    public static final String DataServletName = "login";


    /****************************************************************************'
     *
     *          Post to login session will create a new session given a username and password
     *
     *
     * @param req
     * @param resp
     * @throws IOException
     *
     *
     */


    public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {

       String name;
       String password;

        logRequest(req);

        try{

            name           = getMandatoryString    ("user", req);
            password       = getMandatoryString("password", req);

            sessionManager = new SessionManager();

            // Check if there is an active session

            Session session = this.sessionManager.findExistingSession(name, password);

            // IP restriction is not implemented here

            String ipAddress = "127.0.0.1";

            if(session.exists()){

                PukkaLogger.log(PukkaLogger.Level.ACTION, "Reusing existing session for user " + name);
            }
            else{

                // Try to create a new session
                session = this.sessionManager.createSession(name, password, ipAddress);

                if(session.exists()){

                    PukkaLogger.log(PukkaLogger.Level.ACTION, "Created session for user "+ session.getUser().getUsername() + "(id: " + session.getUserId().toString() + ".");

                }
                else{

                    returnError("Fail to create session", ErrorType.SESSION, HttpServletResponse.SC_FORBIDDEN, resp);
                    resp.flushBuffer();
                    return;


                }

            }

            PukkaLogger.log(PukkaLogger.Level.DEBUG, " Session token = " + session.getToken());

            // Setting a cookie with the session token to allow access to pages

            sessionManager.setSessionCookie(session.getToken(), resp);


            RaggaMember user = session.getUser();

            JSONObject response = new JSONObject()
                    .put("User", user.getId())
                    .put("Token", session.getToken());

            sendJSONResponse(response, new Formatter(), resp);



        } catch (BackOfficeException e) {

            returnError(e.narration, HttpServletResponse.SC_BAD_REQUEST, resp);
            e.printStackTrace();

        } catch (JSONException e) {

            returnError(e.getMessage(), HttpServletResponse.SC_BAD_REQUEST, resp);
            e.printStackTrace();

        }

     }


    public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {

        doPost(req, resp);

    }

    public void doDelete(HttpServletRequest req, HttpServletResponse resp)throws IOException {

        returnError("Delete not supported in " + DataServletName, HttpServletResponse.SC_METHOD_NOT_ALLOWED, resp);
        resp.flushBuffer();

    }

}
