package UserControl;

import DAO.CustomerDAO;
import UserDAO.RatingDAO;
import entity.Account;
import entity.Customer;
import entity.Order;
import entity.Rate;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Rating", urlPatterns = {"/Rating"})
public class Rating extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        HttpSession session = request.getSession(true);
        Account a = (Account) session.getAttribute("acc");
        int accid = a.getAccountID();

        CustomerDAO cdao = new CustomerDAO();
        Customer c = cdao.getCustomerByAccIDInt(accid);

        int idkhach = c.getCustomerId();

        String idxe = request.getParameter("pid");

        request.setAttribute("customerID", idkhach);
        request.setAttribute("productID", idxe);

        String comment = request.getParameter("comment");
        String rate = request.getParameter("rate");

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String date = dtf.format(now);

        System.out.println(idkhach + " " + idxe + " " + comment + " " + rate + " " + date);

        RatingDAO ratingdao = new RatingDAO();

        Rate rated = ratingdao.checkRated(idkhach, idxe);
        if (rated != null) {
            ratingdao.editRating(comment, rate, date, rated.getRateID());
            System.out.println("cap nhat");
        } else {
            ratingdao.rating(idkhach, idxe, comment, rate, date);
            System.out.println("tao moi");
        }
        response.sendRedirect("load_to_view_order?accid=" + accid);

    }

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
