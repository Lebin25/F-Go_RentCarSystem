package UserControl;

import DAO.CustomerDAO;
import DAO.ProductDAO;
import entity.Account;
import entity.Customer;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bin
 */
@WebServlet(name = "OrderControl", urlPatterns = {"/load_to_order"})
public class LoadToOrderControl extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        try {
            HttpSession session = request.getSession(true);
            Account a = (Account) session.getAttribute("acc");
            int accid = a.getAccountID();

            CustomerDAO cdao = new CustomerDAO();
            Customer c = cdao.getCustomerByAccIDInt(accid);
            int verify = c.getIsVerify();

            String pid = request.getParameter("pid");

            ProductDAO pdao = new ProductDAO();
            Product p = pdao.getProductById(pid);

            if (verify == 1) {
                if (p.getProductStatus() == 1) {
                    request.setAttribute("product", p);
                    request.getRequestDispatcher("order.jsp").forward(request, response);
                } else {
                    request.setAttribute("mess", "Hiện tại xe này đang được thuê!");
                    request.getRequestDispatcher("/view_car_detail?" + p.getProductID()).forward(request, response);
                }
            } else {
                request.setAttribute("mess", "Tài khoản của quý khách chưa được xác nhận, vui lòng cập nhật thông tin cá nhân hoặc liên hệ với chúng tôi.");
                request.getRequestDispatcher("/view_car_detail?" + p.getProductID()).forward(request, response);
            }
        } catch (Exception e) {
            response.sendRedirect("login.jsp");
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
