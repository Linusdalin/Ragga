package backOffice.api;

import log.PukkaLogger;
import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import pukkaBO.api.PukkaServlet;
import pukkaBO.condition.ColumnFilter;
import pukkaBO.condition.LookupItem;
import pukkaBO.exceptions.BackOfficeException;
import session.SessionManager;
import siteBackend.RaggaMember;
import siteBackend.RaggaMemberTable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2014-09-26
 * Time: 10:22
 * To change this template use File | Settings | File Templates.
 */
public class RaggaServlet extends PukkaServlet{

    protected SessionManager sessionManager;

    public static enum ErrorType {

        PERMISSION,            // No permission to perform the operation
        SESSION,               // Session expired
        DATA,                  // Data object missing in the database
        MAINTENANCE, GENERAL                // Something else

    }

    //TODO: Not implemented. Fix this when signup/login is in place

    protected RaggaMember getUserFromSession(HttpServletRequest req) {


        RaggaMember dummyMember = new RaggaMember(new LookupItem().addFilter(new ColumnFilter(RaggaMemberTable.Columns.First.name(), "Kalle")));
        return dummyMember;

    }



    protected void setRespHeaders(Formatter jsonExport, HttpServletResponse response) throws BackOfficeException {


        response.setContentType(jsonExport.getContentType());

        setRespHeaders(response, 0);

    }


    protected void setRespHeaders(HttpServletResponse response, int cacheMinutes) {

        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "" + (cacheMinutes * 60));
        response.setHeader("Access-Control-Allow-Headers", "x-requested-with");

        response.setHeader("Access-Control-Allow-Headers", "content-type");
        response.setCharacterEncoding("UTF-8");

    }



    public static String encodeToJSON(String data){

        if(data == null)
                return null;

        data = data.replace("\n", "\\n");
        data = data.replace("[", "(");
        data = data.replace("]", ")");
        data = data.replace("\t", "   ");       // TODO: Improvement: Tab not passed to frontend
        /*
        try {
            return new String(data.getBytes("UTF-8"));

        } catch (UnsupportedEncodingException e) {

            return data;
        }
          */

        return data;

    }


    /****************************************************************************
     *
     *      Generic options method
     *
     * @param req -
     * @param resp -
     * @throws java.io.IOException
     */

    public void doOptions(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        setRespHeaders(resp, 24*60);
        //Tell the browser what requests we allow.

        resp.setHeader("Allow", "GET, HEAD, POST, TRACE, OPTIONS");
    }

    /***********************************************************************
     *
     *          Create an error message and package it correctly
     *
     * @param message   the error message
     * @param httpError error code
     * @param resp      response object to set the correct headers
     * @throws IOException
     */

    protected void returnError(String message, int httpError, HttpServletResponse resp) throws IOException {

        returnError(message, ErrorType.GENERAL, httpError, resp);
    }

    protected void returnError(String message, ErrorType errorCode, int httpError, HttpServletResponse resp) throws IOException {

        returnError(message, errorCode, httpError, PukkaLogger.Level.ACTION, resp);

    }

    protected void returnError(String message, ErrorType errorCode, int httpError, PukkaLogger.Level logLevel, HttpServletResponse resp) throws IOException {

        PukkaLogger.log(logLevel, "Sending error(" + httpError + "): " + message);

        resp.getWriter().print(createJSONError(message, errorCode).toString());
        resp.setStatus(httpError);
        resp.setContentType("application/json");   // TODO: Not implemented other types of error formatting
        setRespHeaders(resp, 3600);
        resp.flushBuffer();

    }

    /************************************************************************''
     *
     *      Create an error message JSON
     *
     * @param message - text
     * @return JSON Object
     *
     *      The format allows for a list of errors. Now we are only using one value
     */

    private JSONObject createJSONError(String message, ErrorType type) {




        try {


            JSONObject error = new JSONObject()
                    .put("error", new JSONArray()
                            .put(new JSONObject()
                                    .put("type", type.name())
                                    .put("message", message))
                    );

            return error;

        } catch (JSONException e) {

            e.printStackTrace();
            return new JSONObject();
        }

    }


    /***************************************************************************
     *
     *          Common method to construct and send a JSON response
     *
     * @param json - the JSON object
     * @param formatter - the formatter object to pass formatting information
     * @param resp - the response object
     */

    protected void sendJSONResponse(JSONObject json, Formatter formatter, HttpServletResponse resp) {


        try {
            setRespHeaders(formatter, resp);
            resp.getWriter().print(formatter.formatJSON(json));
            resp.flushBuffer();

            PukkaLogger.log(PukkaLogger.Level.INFO, "Sending " + json.toString());

        } catch (BackOfficeException e) {

            e.logError(e.narration);

        } catch (IOException e) {

            PukkaLogger.log( e );
        }

    }

    protected void logRequest(HttpServletRequest request) {

        Enumeration pars = request.getParameterNames();
        StringBuffer logString = new StringBuffer();
        while(pars != null && pars.hasMoreElements()){

            String parameterName = (String)pars.nextElement();
            logString.append( parameterName + " - "+(request.getParameter(parameterName)).toString() + " ");
        }

        PukkaLogger.log(PukkaLogger.Level.ACTION, request.getMethod() + "-request " + request.getRequestURI() + " Parameters: " + logString);
    }





}
