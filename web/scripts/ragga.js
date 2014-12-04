/****************************************************************************'
 *
 *          Generic Ragga Functionality
 *
 *
 */



$(document).ready(function(){


});


function getCookie(Name) {

    var search = Name + "=";
    var returnvalue = "";

    if (document.cookie.length > 0) {

        offset = document.cookie.indexOf(search);

        // if cookie exists

        if (offset != -1) {
            offset += search.length;

            // set index of beginning of value

            end = document.cookie.indexOf(";", offset);

            // set index of end of cookie value

            if (end == -1) end = document.cookie.length;
            returnvalue=unescape(document.cookie.substring(offset, end))
            }
    }
    return returnvalue;
}

function setCookie(name, what){

    document.cookie=name +"="+ what;
}



/****************************************************
 *
 *          Filling the latest imageSection with profile data.
 *
 *          Using profile type = 1
 *          Selection = 2 (image update)
 *
 *          Target div: latestImages
 *
 *
 */


function loadLatestImages(totalItems, itemsPerRow, sessionToken){


    // Get profile data from the service

    $.get("/Profile?type=1&selection=2&session=" + sessionToken,function(data,status){

        var profiles = data.profile;
        //alert(JSON.stringify(profiles) + " length = " + profiles.length);

        for(i = 0; i < profiles.length && i < totalItems; i++){

            var profile = profiles[i];
            //alert("Adding profile:" + JSON.stringify(profile));

            // Construct the div

            var div =  "<div class=\"col\">"+
                "<a href=\"profile.jsp/?user="+ profile.id+"\" class=\"pop-create\">"+
                "<img src=\"/image/?user=" + profile.id+"&size=1\" alt=\"\"></a>" +
                "<a href=\"Profile.jsp/?user="+ profile.id+"\">"+
                "<span class=\"username\"> "+ profile.name +"</span>"+
                "<span class=\"age "+ profile.sex +"\"> "+ profile.age + " " + year + "</span>"+

                "</a> </div>";

            $("#latestImages").append(div);



            if((i+1) % itemsPerRow == 0)
                $("#latestImages").append("<hr/>");

        }


    });

}





