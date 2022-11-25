package Controllers.Authentication.Login;

import DAO.AccountDAO;
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
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author Bin
 */
@WebServlet(name = "NewPassword", urlPatterns = {"/newPassword"})
public class NewPassword extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        AccountDAO adao = new AccountDAO();
        Account a = adao.getAccountByEmail(email);
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");

        String md5_newpass = DigestUtils.md5Hex(newPassword).toUpperCase();
        String md5_repass = DigestUtils.md5Hex(confPassword).toUpperCase();

        if(!md5_newpass.equals(md5_repass)){
            String mess = "Nhập lại mật khẩu không chính xác!";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("newPassword.jsp").forward(request, response);
        } else {
            Account ac = new Account(a.getAccountID(), a.getAccount(), md5_newpass, a.getRole());
            adao.changepassword(ac);
            session.setAttribute("acc", ac);
            response.sendRedirect("login.jsp");
        }
    }

}
