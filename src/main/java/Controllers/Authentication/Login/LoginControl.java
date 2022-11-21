package Controllers.Authentication.Login;

import AuthenicationDAO.LoginDAO;
import entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author Bin
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/LoginControl"})
public class LoginControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String acc = request.getParameter("account");
            String pass = request.getParameter("password");
            LoginDAO loginDAO = new LoginDAO();
            Account account = loginDAO.getAccountByAcc(acc);
            if (account != null) {
                String password = null;
                if (account.getRole().equals("0")) {
                    String md5_pass = DigestUtils.md5Hex(pass).toUpperCase();
                    password = md5_pass;
                } else {
                    password = pass;
                }
                Account a = loginDAO.checkLogin(acc, password);
                if (a == null) {
                    String mess = "Mật khẩu không chính xác!";
                    request.setAttribute("mess", mess);
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("acc", a);
                    session.setMaxInactiveInterval(900);
                    request.getRequestDispatcher("Home").forward(request, response);
                }
            } else {
                String mess = "Tài khoản không tồn tại! Vui lòng đăng ký tài khoản để đăng nhập vào hệ thống.";
                request.setAttribute("mess", mess);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } catch (Exception e) {
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
