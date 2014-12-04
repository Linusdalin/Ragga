package backOffice.api;

import backOffice.system.SignificantEventHandler;
import crm.*;
import dataRepresentation.DBTimeStamp;
import databaseLayer.DBKeyInterface;
import log.PukkaLogger;
import pukkaBO.condition.ColumnFilter;
import pukkaBO.condition.LookupItem;
import pukkaBO.exceptions.BackOfficeException;

/********************************************************************************
 *
 *          The external event handler takes the events from the API and handles them in the database
 *
 *          It is also responsible for creating appropriate significant events
 *
 *
 */

public class ExternalEventHandler {


    private static final int INITIAL_MESSAGE = -1;


    public String registerMessage(CommunityMember from, CommunityMember to, int msgId, String msg, DBTimeStamp time) throws APIException {

        try{

            String name = "Message from " + from.getUsername() + " to " + to.getUsername() + " @ " + time.toString();


            CommunityMessage message = new CommunityMessage(name, from, to, time.toString(), msgId, INITIAL_MESSAGE, "");
            message.store();

            if(message.exists())
                return "OK";

            throw new APIException(APIException.INTERNAL, "Could not register message");

        }catch (BackOfficeException e){

            PukkaLogger.log( e );
            throw new APIException(APIException.INTERNAL, "Could not register friendship");
        }

    }

    public String registerReply(CommunityMember from, CommunityMember to, long msgId, String msg, DBTimeStamp time, long orig)  throws APIException {

        try{


            String name = "Reply from " + from.getUsername() + " to " + to.getUsername() + " @ " + time.toString();

            CommunityMessage message = new CommunityMessage(name, from, to, time.toString(), msgId, orig, "");
            message.store();

            if(message.exists())
                return "OK";

            throw new APIException(APIException.INTERNAL, "Could not register reply");

        }catch (BackOfficeException e){

            PukkaLogger.log( e );
            throw new APIException(APIException.INTERNAL, "Could not register friendship");
        }

    }



    /**********************************************************************************************
     *
     *          Register Subscription payment
     *
     *
     * @param product - the sub product that is bought. This is an external identifier that has no semantics in the system
     * @param units - How may was bought (e.g. month subscriptions)
     * @param validity - When will this expire
     * @param totalValue - The total purchase price in cent.
     * @param time - Time of purchase
     * @param comment - A comment from the external system. For external use only.
     * @param externalPaymentId - external reference to be able to mach the transaction in the external system
     * @return - the internal payment id
     * @throws APIException - If the parameters are wrong.
     *
     *          NOTE:   This method uses the EventHandler to update the internal model. This ensures that
     *                  all sources of data is handled uniformly.
     *
     */


    public String registerPayment(CommunityMember member, String product, long units, DBTimeStamp validity,
                               int totalValue, DBTimeStamp time,
                               String comment, String externalPaymentId) throws APIException {

        try{

            CommunityPayment payment = new CommunityPayment(totalValue, member, units, time.getSQLTime().toString(), externalPaymentId, comment);
            payment.store();

            SignificantEventHandler significantEventHandler = new SignificantEventHandler();
            significantEventHandler.handlePayment(member, time, totalValue);


            if(payment.exists())
                return "OK";

            throw new APIException(APIException.INTERNAL, "Could not register login");

        }catch (BackOfficeException e){

            PukkaLogger.log( e );
            throw new APIException(APIException.INTERNAL, "Could not register friendship");
        }

    }

    /************************************************************************'
     *
     *          Register a user
     *
     * @param username
     * @param firstName
     * @param lastName
     * @param excludeStats
     * @param email
     * @param sex
     * @param birth
     * @param address
     * @param city
     * @param zip
     * @param state
     * @param country
     * @param newsLetter
     * @param externalId
     * @param campaign
     * @param product
     * @param time
     * @return
     * @throws APIException
     *
     */



    public DBKeyInterface registerUser(String username, String firstName, String lastName, boolean excludeStats,
                            String email, String sex, String birth,
                            String address, String city, String zip, String state, String country,
                            boolean newsLetter, String externalId, String campaign, String product,
                            DBTimeStamp time) throws APIException{

        try{

            CommunityMember existingUserWithSameName = new CommunityMember(new LookupItem().addFilter(new ColumnFilter(CommunityMemberTable.Columns.Username.name(), username)));
            if(existingUserWithSameName.exists())
                throw new APIException(APIException.DUPLICATE, "Could not register user. User with name " + username + " already exists");


            CommunityMember newMember = new CommunityMember(username, firstName, lastName, email, time.getSQLTime().toString(), externalId, sex, campaign);
            newMember.store();

            if(!newMember.exists())
                throw new APIException(APIException.INTERNAL, "Could not register user");

            SignificantEventHandler significantEventHandler = new SignificantEventHandler();
            significantEventHandler.handleRegistration(newMember, time);

            return newMember.getKey();

        }catch (BackOfficeException e){

            PukkaLogger.log( e );
            throw new APIException(APIException.INTERNAL, "Could not register user");
        }



    }


    public String registerLogin(CommunityMember member, DBTimeStamp time) throws APIException{

        try{

            String name = "Login for user " + member.getUsername() + " @ " + time.toString();

            CommunityLogin login = new CommunityLogin(name, member, time.getSQLTime().toString());
            login.store();

            if(login.exists())
                return "OK";

            throw new APIException(APIException.INTERNAL, "Could not register login");

        }catch (BackOfficeException e){

            PukkaLogger.log( e );
            throw new APIException(APIException.INTERNAL, "Could not register login");
        }

    }





    /*****************************************************************************'
     *
     *       One member assigns the other as a friend
     *
     * @param member - the person assigning the other as a friend
     * @param friend - the frined (passive)
     * @param time - time for backdating
     * @return - id from the database from the communityFriend table
     * @throws APIException
     *
     *          If member is null, this will trigger the self check
     *
     */


    public String registerFriend(CommunityMember member, CommunityMember friend, DBTimeStamp time) throws APIException{

        String name = "Friendship " + member.getUsername() + " -> " + friend.getUsername() + " @ " + time.toString();

        try{

            CommunityFriend friendship = new CommunityFriend(name, member, friend, time.getSQLTime().toString());
            friendship.store();

            if(friendship.exists())
                return "OK";

            throw new APIException(APIException.INTERNAL, "Could not register friendship");

        }catch (BackOfficeException e){

            PukkaLogger.log( e );
            throw new APIException(APIException.INTERNAL, "Could not register friendship");
        }
    }

    /*********************************************************************************
     *
     *          One member contacts another
     *          This is typically for relationship communities and could be of different types:
     *
     *           - poke
     *           - visit page
     *           - write on wall
     *
     *
     * @param from - active member
     * @param to - passive member
     * @param time - time for backdating
     * @param type - arbitrary tag to define the type of contact
     * @return
     * @throws APIException
     *
     *
     *      If from = null, the self check will start
     */


    public String registerContact(CommunityMember from, CommunityMember to, String type, DBTimeStamp time) throws APIException {

        String name = "Contact " + from.getUsername() + " -> " + to.getUsername() + " ("+ type +")";

        try{

            CommunityContact contact = new CommunityContact(name, from, to, time.getSQLTime().toString(), type);
            contact.store();

            if(contact.exists())
                return "OK";

            throw new APIException(APIException.INTERNAL, "Could not register contact, fail to store");

        }catch (BackOfficeException e){

            PukkaLogger.log( e );
            throw new APIException(APIException.INTERNAL, "Could not register contact");
        }
    }



}
