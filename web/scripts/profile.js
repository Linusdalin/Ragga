/****************************************************************************'
 *
 *          Functionality for the profile page
 *
 *
 */

var profileUpdate;

function setUpdate(p){

    profileUpdate = p;
}

$(document).ready(function(){


    setCookie("session", "dummy");   // TODO: change this for login
    var sessionToken = getCookie("session");

    //alert("token" + sessionToken);

    loadLatestImages(5, 5, sessionToken);
    loadUpdate(sessionToken);
    loadProfile(sessionToken);
    loadCommunication(sessionToken);
    loadLatestRegistrations(5, sessionToken);
});


/******************************************************************''
 *
 *
 *
 *
 *
 *
 */


function loadUpdate( sessionToken ){

    // Get profile data and store it in the active profile

    $.get("/Profile?type=2&session=" + sessionToken,function(data,status){

        var profile = data.profile;

        $("#lastLogin").append(profile.lastLogin);

        var updates = profile.update;

        $("#newMembers").text(updates.members);
        $("#newVisits").text(updates.visits);
        $("#newFavourites").text(updates.favourites);
        $("#newFlirts").text(updates.flirts);
        $("#newMail").text(updates.messages);
        $("#newPosts").text(updates.posts);


    });

}

function loadProfile( sessionToken ){

    // Get profile data and update the page

    $.get("/Profile?type=3&session=" + sessionToken,function(data,status){

        var profile = data.profile;

        $("#completion").prepend(profile.completion);
        $("#userName").text(profile.name);

    });

}

function loadCommunication( sessionToken ){

    // Get profile data and store it in the active profile

    $.get("/Profile?type=4&session=" + sessionToken,function(data,status){

        var profile = data.profile;

        $("#online").text(profile.online);

        var updates = profile.update;

        $("#flirts").text(updates.flirts);
        $("#mail").text(updates.messages);
        $("#posts").text(updates.posts);
        $("#visits").text(updates.visits);


    });
}

function loadLatestRegistrations( totalItems, sessionToken ){


    // Get profile data from the service

    $.get("/Profile?type=1&selection=2&session="+sessionToken, function(data,status){

        var profiles = data.profile;

        for(i = 0; i < profiles.length && i < totalItems; i++){

            var profile = profiles[i];

            // Construct the div

            var div =
                "<li>" +
                " <a href=\"profile.jsp/?user="+ profile.id+"\">"+
                "   <img src=\"/image/?user=" + profile.id+"&size=2\" height=\"50\" alt=\"\"></a>" +
                "			<span class=\"username\">"+ profile.name + "</span>" +
                "           <span class=\"age "+ profile.sex +"\"> "+ profile.age + " " + year + "</span>"+
                "           <span class=\"city\"> "+ profile.city + "</span>"+
                "		</a>" +
                "	</li>";


            $("#latestRegistrations").append(div);

        }

    });

}










