package test;

import log.PukkaLogger;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 *
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2013-09-08
 * Time: 11:49
 * To change this template use File | Settings | File Templates.
 */
class URLReader {

    enum METHOD {POST, GET, DELETE}


    private String url;

    public URLReader(String url){

        this.url = url;
        PukkaLogger.log(PukkaLogger.Level.INFO, "Setting service URL to:" + url);



    }


    public String getContent(METHOD method) {


   		try{
               // Locate the service and append capabilities as parameters
               URL service = new URL(url);        //Add parameters here

               PukkaLogger.log(PukkaLogger.Level.INFO, "**Get json url: " + service.toString());

               HttpURLConnection conn = (HttpURLConnection) service.openConnection();
               conn.setRequestMethod(method.name());


   			   // open the stream and put it into BufferedReader
               BufferedReader br = new BufferedReader(
                                  new InputStreamReader(conn.getInputStream()));

               String line, json = "";

               while ((line = br.readLine()) != null)
                   json += line;

               PukkaLogger.log(PukkaLogger.Level.INFO, "Read json: " + json);

               br.close();
               return json;

   		} catch (MalformedURLException e) {

               PukkaLogger.log(PukkaLogger.Level.INFO, "Incorrect URL" + e.getMessage());

   		} catch (IOException e) {

               PukkaLogger.log(PukkaLogger.Level.INFO, "I/O Exception" + e.getMessage());
   		}

        return null;
   	}


}


