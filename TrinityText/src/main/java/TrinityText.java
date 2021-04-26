import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Scanner;

import org.json.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class TrinityText {

    public static String number;
    public static String message;
    public static String key;

    public static void main(String[] arguments) {
        String[] args = {"src/message.txt", "7632032990", "feceabd488c6bb8a1ef225165181a9af081ed4femr56fiwbHt2G0nrLd2KCXiPgE"};

        //Check Arguments
        if (args.length > 3 || args.length < 1) {
            System.out.println("Arguments: <messageFileName> <phoneNumber> (key)");
            return;
        }

        //Check if custom key is input
        if (!(args.length == 3)) {
            key = "feceabd488c6bb8a1ef225165181a9af081ed4femr56fiwbHt2G0nrLd2KCXiPgE";
        } else {
            key = args[2];
        }
        number = args[1];

        //Get message from file using argument
        try {
            File file = new File(args[0]);
            Scanner sc = new Scanner(file);
            message = sc.nextLine();
        } catch (FileNotFoundException e) {
            System.out.println("File not found!");
            return;
        }

        //Attempt to Send Text
        try {
            final NameValuePair[] data = {
                    new BasicNameValuePair("phone", number),
                    new BasicNameValuePair("message", message),
                    new BasicNameValuePair("key", key)
            };
            HttpClient httpClient = HttpClients.createMinimal();
            HttpPost httpPost = new HttpPost("https://textbelt.com/text");
            httpPost.setEntity(new UrlEncodedFormEntity(Arrays.asList(data)));
            HttpResponse httpResponse = httpClient.execute(httpPost);

            String responseString = EntityUtils.toString(httpResponse.getEntity());
            System.out.println(responseString);

            JSONParser parser = new JSONParser();
            JSONArray array = (JSONArray) parser.parse(responseString);
            System.out.println(array.get(0) + ", " + array.get(2));
        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }
    }
}
