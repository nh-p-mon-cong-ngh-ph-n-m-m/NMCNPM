package accessgoogle;

import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
public class GoogleUtils {
	//6.1 GetToken(code)
  public static String getToken(final String code) throws ClientProtocolException, IOException {
    String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
        .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
            .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
            .add("redirect_uri",Constants.GOOGLE_REDIRECT_URI).add("code", code)
            .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
        .execute().returnContent().asString();
      JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
     // 6.2.1 Exchange code for accesstoken
      String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
     // 6.2.2 Return accesstoken
      return accessToken;
  }
  //6.4 GetUserInfo(accesstoken)
  public static GooglePojo getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
	//6.5.1 Request info
    String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
    String response = Request.Get(link).execute().returnContent().asString();
    //6.5.2 Return info
    GooglePojo googlePojo = new Gson().fromJson(response, GooglePojo.class);
    System.out.println(googlePojo);
    return googlePojo;
  }
}
