


$(document).ready(function(){

    loadLatestImages(10, 5 , "");
    loadLatestLogin( 5 );
    loadPromotedProfiles( 5 );

    armActions();
});




/****************************************************
 *
 *          Filling the latest login Section with profile data.
 *
 *          Using profile type = 1
 *          Selection = 1 (login)
 *
 *          Target div: latestLogin
 *
 */

function loadLatestLogin( totalItems ){


    // Get profile data from the service

    $.get("/Profile?type=1&selection=1",function(data,status){

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



            $("#latestLogins").append(div);

        }

    });

}


/****************************************************
 *
 *          Filling the latest login Section with profile data.
 *
 *
 *
 *          Target div: promotedProfiles
 *
 */

function loadPromotedProfiles( totalItems ){


    // Get profile data from the service

    $.get("/Ad",function(data,status){

        var ads = data.Ad;

        for(i = 0; i < ads.length && i < totalItems; i++){

            var ad = ads[i];

            // Construct the div

            var div =
                "<li>"+
                "	<a href=\"/ad.jsp/?id="+ ad.id +"\">"+
                "       <img src=\"/image/?ad=" + ad.id+"&size=2\" height=\"50\" alt=\"\"></a>" +
                "   		<span class=\"searching\">"+ad.category+"</span>"+
                "			<span class=\"title\">"+ ad.title+"</span>"+
                "	</a>"+
                "</li>";

            $("#promotedProfiles").append(div);

        }

    });

}


function armActions(){




    $("#registerButton").click(function(){

      });

    /*********************************************
     *
     *      Set the submit function for the login form
     *
     *
     */



    $("#login").submit(function(e) {

        //prevent Default functionality
        e.preventDefault();


        //do your own request an handle the results
         $.ajax({
                url: "/Login",
                type: 'post',
                 data: {
                         "user": $('#username').val(),
                        "password": $('#password').val()
                     },
                 success: function(data) {

                     alert(JSON.stringify(data))
                     window.location.replace("profile.jsp");

                 },
                 error: function(data) {
                           alert("oj oj: " + JSON.stringify(data))
                         }
            });

    });


}


function login(){


    alert("Login!");
}

