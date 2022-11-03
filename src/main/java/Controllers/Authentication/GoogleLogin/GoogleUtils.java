package Controllers.Authentication.GoogleLogin;

/**
 *
 * @author Bin
 */
import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
public class GoogleUtils {
  public static String getToken(final String code) throws ClientProtocolException, IOException {
    String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
        .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
            .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
            .add("redirect_uri",Constants.GOOGLE_REDIRECT_URI).add("code", code)
            .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
        .execute().returnContent().asString();
      JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
      String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
      return accessToken;
  }
  public static GoogleDTO getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
    String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
    String response = Request.Get(link).execute().returnContent().asString();
    GoogleDTO googleDTO = new Gson().fromJson(response, GoogleDTO.class);
    System.out.println(googleDTO);
    return googleDTO;
  }
}
