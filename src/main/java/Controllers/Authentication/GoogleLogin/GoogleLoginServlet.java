package Controllers.Authentication.GoogleLogin;

import DAO.AccountDAO;
import AuthenicationDAO.LoginDAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login-google")
public class GoogleLoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String code = request.getParameter("code");
        String accessToken = GoogleUtils.getToken(code);
        GoogleDTO user = GoogleUtils.getUserInfo(accessToken);

        String account = user.getEmail();
        String role = "0";

        LoginDAO logdao = new LoginDAO();
        Account a = logdao.getAccountByEmail(account);
        if (a == null) {
            logdao.addEmailToAccount(account, role);
            Account ggaccount = logdao.getAccountByEmail(account);
            
            logdao.addEmailToCustomer(account, ggaccount.getAccountID());
                    
            HttpSession session = request.getSession();
            session.setAttribute("acc", ggaccount);
            session.setMaxInactiveInterval(900);
            request.getRequestDispatcher("Home").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            session.setMaxInactiveInterval(900);
            request.getRequestDispatcher("Home").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
