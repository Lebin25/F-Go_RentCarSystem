/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AdminControl;

import DAO.CustomerDAO;
import DAO.OrderDAO;
import DAO.ProductDAO;
import entity.Customer;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "AddOrderControl", urlPatterns = {"/addorder"})
public class AddOrderControl extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        String oname = request.getParameter("name");
        String ocarid = request.getParameter("carid");
        String ophone = request.getParameter("phone");
        String otimeBegin = request.getParameter("timeBegin");
        String otimeEnd = request.getParameter("timeEnd");
        String oaddress = request.getParameter("address");
        String ostatus = "1";

        CustomerDAO cdao = new CustomerDAO();
        Customer c = cdao.getCustomerByPhone(ophone);

        int customerId = c.getCustomerId();

        System.out.println(ocarid);

        ProductDAO pdao = new ProductDAO();
        Product p = pdao.getProductById(ocarid);
        int price = p.getPrice();
        
        int totalMoney;
        long diffrence = 0;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        try {
            Date firstDate = sdf.parse(otimeBegin);
            Date secondDate = sdf.parse(otimeEnd);

            long diff = secondDate.getTime() - firstDate.getTime();
            TimeUnit time = TimeUnit.DAYS;
            diffrence = time.convert(diff, TimeUnit.MILLISECONDS);

        } catch (ParseException ex) {
            Logger.getLogger(AddOrderControl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        totalMoney = (int) (price * diffrence);

        System.out.println(oname + " " + ocarid + " " + ophone + " " + otimeBegin + " " + otimeEnd + " " + totalMoney + " " + oaddress);

        OrderDAO odao = new OrderDAO();
        odao.addOrder(customerId, ocarid, otimeBegin, otimeEnd, oaddress, totalMoney, ostatus);

        response.sendRedirect("manageorder");
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
