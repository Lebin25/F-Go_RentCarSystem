package Controllers.Authentication.GoogleLogin;

/**
 *
 * @author Bin
 */
public class Constants {
  public static String GOOGLE_CLIENT_ID = "610265253425-dq7bkc7t5dv5ogd4q0ol2b58sv3bfj3d.apps.googleusercontent.com";
  public static String GOOGLE_CLIENT_SECRET = "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";
  public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/GoogleLoginServlet";
  public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
  public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
  public static String GOOGLE_GRANT_TYPE = "authorization_code";
}