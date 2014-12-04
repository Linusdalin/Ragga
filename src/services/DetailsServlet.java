package services;

import backOffice.api.ExternalEventHandler;
import backOffice.api.Formatter;
import backOffice.api.RaggaServlet;
import dataRepresentation.DBTimeStamp;
import databaseLayer.DBKeyInterface;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import pukkaBO.condition.ColumnFilter;
import pukkaBO.condition.LookupItem;
import pukkaBO.condition.ReferenceFilter;
import pukkaBO.exceptions.BackOfficeException;
import siteBackend.RaggaMember;
import siteBackend.RaggaProfileDetails;
import siteBackend.RaggaProfileDetailsTable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *          Servlet with a lot of faked data
 *
 */

public class DetailsServlet extends RaggaServlet {

    public static final String DataServletName = "details";


    /**************************************************************'
     *
     * @param req
     * @param resp
     * @throws java.io.IOException
     *
     *
     *      //TODO: Get user details
     */


    public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {

        try{

            logRequest(req);


            String session                   = getMandatoryString("session", req);

            RaggaMember member = getUserFromSession(req);

            JSONObject details = getDetails(member);
            JSONObject json = new JSONObject().put(DataServletName, details);

            sendJSONResponse(json, new Formatter(), resp);


        }catch(BackOfficeException e){

            returnError(e.narration, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, resp);
            e.printStackTrace(System.out);

        }

    }


    private JSONObject getDetails(RaggaMember member) throws BackOfficeException{

        RaggaProfileDetails detailsForUser = new RaggaProfileDetails(new LookupItem().addFilter(new ReferenceFilter(RaggaProfileDetailsTable.Columns.User.name(), member.getKey() )));

        if(!detailsForUser.exists()){
            throw new BackOfficeException(BackOfficeException.Data, "User does not exist...");
        }

        JSONObject details = new JSONObject()
                    .put("background", detailsForUser.getBackground())
                    .put("piercings", detailsForUser.getPiercing())
                    .put("tatoos", detailsForUser.getTatoos())
                    .put("facialHair", detailsForUser.getFacialHair())
                    .put("bodyHair", detailsForUser.getBodyHair())
                    .put("bestFeature", detailsForUser.getBestFeature())
                    .put("languages", detailsForUser.getLanguages())
                    .put("education", detailsForUser.getEducation())
                    .put("occupation", detailsForUser.getOccupation())
                    .put("income", detailsForUser.getIncome())
                    .put("politics", detailsForUser.getPolitics())
                    .put("children", detailsForUser.getChildren())
                    .put("moreChildren", detailsForUser.getMoreChildren())
                    .put("tobacco", detailsForUser.getTobacco())
                    .put("alcohol", detailsForUser.getAlcohol())
                    .put("food", detailsForUser.getFood())
                    .put("fitness", detailsForUser.getFitness())


                ;

        return details;
    }

}
