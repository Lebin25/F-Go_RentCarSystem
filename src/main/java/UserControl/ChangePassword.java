/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package UserControl;

import DAO.AccountDAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ChangePassword", urlPatterns = {"/changePassword"})
public class ChangePassword extends HttpServlet {

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
        String u = request.getParameter("user");
        String opass = request.getParameter("pass");
        String newpass = request.getParameter("newpass");
        String repass = request.getParameter("repass");
//        String md5_opass = DigestUtils.md5Hex(opass).toUpperCase();
        String md5_newpass = DigestUtils.md5Hex(newpass).toUpperCase();
        String md5_repass = DigestUtils.md5Hex(repass).toUpperCase();
        AccountDAO adao = new AccountDAO();
//        Account a = adao.check(u, md5_opass);
        Account ggacc = adao.checkGoogleAccount(u);
        if (opass == null && ggacc != null) {
            Account ggac = new Account(ggacc.getAccountID(), u, md5_newpass, ggacc.getRole());
            adao.changepassword(ggac);
            HttpSession session = request.getSession();
            session.setAttribute("acc", ggac);
            response.sendRedirect("Home");
        } else {
            
            String md5_opass = DigestUtils.md5Hex(opass).toUpperCase();
            Account a = adao.check(u, md5_opass);
            
            if (a == null) {
                String mess1 = "Mật khẩu hiện tại không chính xác!";
                request.setAttribute("mess1", mess1);
                request.getRequestDispatcher("changePassword.jsp").forward(request, response);
            } else if (!md5_newpass.equals(md5_repass)) {
                String mess2 = "Nhập lại mật khẩu không chính xác!";
                request.setAttribute("mess2", mess2);
                request.getRequestDispatcher("changePassword.jsp").forward(request, response);
            } else {
                Account ac = new Account(a.getAccountID(), u, md5_newpass, a.getRole());
                adao.changepassword(ac);
                HttpSession session = request.getSession();
                session.setAttribute("acc", ac);
                response.sendRedirect("Home");
            }
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
