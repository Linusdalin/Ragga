
var category;


$(document).ready(function(){

    //Todo: This should be set by the page parameter

    category = 1;
    var session = "dummy";

    loadMessages(session, category, 10);
});



function loadMessages(session, category, maxItems){


        // Get profile data from the service

    $.get("/Inbox?cat=" + category + "&session=" + session,function(data,status){

        var messages = data.messageList;

        for(i = 0; i < messages.length && i < maxItems; i++){

            var message = messages[i];

            // Construct the table row

            var div =
                "<tr class=\"mailbox-inbox-row new_mail\">\n"+
                        "    <td class=\"mailbox-inbox-item mailbox-inbox-item-first mailbox-inbox-item-select\" width=\"20\">\n"+
                        "        <img src=\"/img/new_mail.png\" alt=\"Oläst mail\" />\n"+
                        "    </td>\n"+
                        "    <td class=\"mailbox-inbox-item mailbox-inbox-item-image\" width=\"50\">\n"+
                        "        <img src=\"/image/?user=" + message.otherPart+"&size=2\" alt=\""+ message.name+"\" />\n"+
                        "    </td>\n"+
                        "    <td class=\"mailbox-inbox-item mailbox-inbox-item-sender\" width=\"160\">\n"+
                        "        <span class=\"mailbox-inbox-item-top\">\n"+
                        "            <a class=\"Man\" href=\"/profile/view/profileid/781\"> "+ message.name+", "+ message.age+ " </a>\n"+
                        "        </span>\n"+
                        "        <span class=\"mailbox-inbox-item-bottom date\"> "+ message.date +" </span>\n"+
                        "    </td>\n"+
                        "    <td class=\"mailbox-inbox-item mailbox-inbox-item-content\" width=\"400\">\n"+
                        "        <span class=\"mailbox-inbox-item-top\">\n"+
                        "            <a href=\"/mail/view/id/3225\">"+ message.subject+"</a>\n"+
                        "        </span>\n"+
                        "        <br />\n"+
                        "        <span class=\"mailbox-inbox-item-bottom\">"+ message.intro+"</span>\n"+
                        "    </td>\n"+
                        "    <td class=\"mailbox-inbox-item mailbox-inbox-item-action\" width=\"30\">\n"+
                        "        <a class=\"confirm\" href=\"/mail/delete/id/3225\"><img src=\"/img/delete.png\" alt=\"Delete\" /></a>\n"+
                        "    </td>\n"+
                        "</tr>\n"

            $("#messageList").append(div);

        }

    });



}



