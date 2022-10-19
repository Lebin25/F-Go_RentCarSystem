package Controllers.Authenication.GoogleSignin;

/**
 *
 * @author Bin
 */
public class Constant {
    public static String GOOGLE_CLIENT_ID = "232345260601-tkgeu01pblme49pruq8qpl65lmoikj54.apps.googleusercontent.com";
    public static String GOOGLE_CLIENT_SECRET = "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";
    public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/loginGoogle/GoogleSigninServlet";
    public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
    public static String GOOGLE_GRANT_TYPE = "authorization_code";
}
