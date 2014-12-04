/****************************************************************************'
 *
 *          Functionality for the profile page
 *
 *
 */


$(document).ready(function(){


    setCookie("session", "dummy");   // TODO: change this for login
    var sessionToken = getCookie("session");

    //alert("token" + sessionToken);

    loadDetails(sessionToken);
});


/******************************************************************''
 *
 *
 *
 *
 *
 *
 */


function loadDetails( sessionToken ){

    // Get profile data and update the page

    $.get("/Details?session=" + sessionToken,function(data,status){

        var details = data.details;

        $("#background").text(details.background);
        $("#tatoos").text(details.tatoos);
        $("#piercings").text(details.piercings);
        $("#bodyHair").text(details.bodyHair);
        $("#facialHair").text(details.facialHair);
        $("#bestFeature").text(details.bestFeature);
        $("#languages").text(details.languages);
        $("#education").text(details.education);
        $("#occupation").text(details.occupation);
        $("#income").text(details.income);
        $("#politics").text(details.politics);
        $("#children").text(details.children);
        $("#moreChildren").text(details.moreChildren);
        $("#tobacco").text(details.tobacco);
        $("#alcohol").text(details.alcohol);
        $("#food").text(details.food);
        $("#fitness").text(details.fitness);


    });

}

