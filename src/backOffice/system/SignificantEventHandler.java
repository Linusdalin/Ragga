package backOffice.system;

import crm.*;
import dataRepresentation.DBTimeStamp;
import log.PukkaLogger;
import pukkaBO.condition.LookupItem;
import pukkaBO.condition.Ordering;
import pukkaBO.condition.ReferenceFilter;
import pukkaBO.condition.Sorting;
import pukkaBO.exceptions.BackOfficeException;

/******************************************************************************''
 *
 *          The significant event handler manages events and creates
 *          entries in the significant event handler table where appropriate.
 *
 *
 */
public class SignificantEventHandler {

    private static final int Welcome_Email = 0;


    /**************************************************************************************************''
     *
     *          Handle the registration of a new user
     *
     *          New user is always a significant event
     *
     * @param member
     * @param time
     * @throws BackOfficeException
     */

    public void handleRegistration(CommunityMember member, DBTimeStamp time) throws BackOfficeException {

        SignificantEventType type = SignificantEventType.getRegistration();
        SignificantEventSignificance significanceLevel = SignificantEventSignificance.getNormal();
        String name = type.getName() + " for " + member.getUsername();


        SignificantEvent significantEvent = new SignificantEvent(
                name,
                member,
                time.getSQLTime().toString(),
                type,
                SignificantEventAction.getEmail(), Welcome_Email,
                significanceLevel,
                SignificantEvent.REQUIRES_ACTION,
                1);

        significantEvent.store();
        PukkaLogger.log(PukkaLogger.Level.ACTION, "Created significant event (" + type.getName() + ") for user " + member.getUsername() + " with action " + SignificantEventAction.getEmail().getName());


    }


    /**************************************************************************************************''
     *
     *          Handle the payment of a user
     *
     *          This could result in either a first payment or a secondary payment
     *
     * @param member
     * @param time
     * @throws BackOfficeException
     */

    public void handlePayment(CommunityMember member, DBTimeStamp time, int amount) throws BackOfficeException {

        // First check if there are payments registered for the user.

        SignificantEventType type;
        SignificantEventSignificance significanceLevel;

        CommunityPayment lastPayment = new CommunityPayment(new LookupItem()
                        .addFilter(new ReferenceFilter(CommunityPaymentTable.Columns.User.name(), member.getKey()))
                        .addSorting(new Sorting(CommunityPaymentTable.Columns.TimeStamp.name(), Ordering.LAST)));

        if(lastPayment.exists()){

            // There is a payment. Add the event as a repeat payment

            type = SignificantEventType.getPayment();
            significanceLevel = SignificantEventSignificance.getNormal();

        }
        else{

            // No payment, this is a first deposit

            type = SignificantEventType.getPayment();
            significanceLevel = SignificantEventSignificance.getNormal();


        }

        String name = type.getName() + "(" + amount + ")" + " for " + member.getUsername();

        SignificantEvent significantEvent = new SignificantEvent(
                name,
                member,
                time.getSQLTime().toString(),
                type,
                SignificantEventAction.getNoAction(), 0,
                significanceLevel,
                SignificantEvent.FYI,
                1);

        significantEvent.store();
        PukkaLogger.log(PukkaLogger.Level.ACTION, "Created significant event (" + type.getName() + ") for user " + member.getUsername() + " with action " + SignificantEventAction.getEmail().getName());



    }

}
