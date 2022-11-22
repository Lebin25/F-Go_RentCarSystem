/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package UserControl;

import DAO.ProductDAO;
import DAO.CustomerDAO;
import UserDAO.RatingDAO;
import entity.Customer;
import entity.Order;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoadToViewOrder", urlPatterns = {"/load_to_view_order"})
public class LoadToViewOrder extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String accid = request.getParameter("accid");

        CustomerDAO cdao = new CustomerDAO();
        Customer c = cdao.getCustomerByAccID(accid);
        int cusid = c.getCustomerId();

        RatingDAO rdao = new RatingDAO();
        List<Order> olist = rdao.getOrderingByCusID(cusid);
        
        List<Product> plist = new ArrayList<>();

        if (!olist.isEmpty()) {
            for (Order o : olist) {
                int idxe = o.getProductId();
                ProductDAO pdao = new ProductDAO();
                Product p = pdao.getProductByIdInt(idxe);
                plist.add(p);
            }

            request.setAttribute("orderDetailList", olist);
            request.setAttribute("productOrderList", plist);
            request.getRequestDispatcher("viewOrderStatus.jsp").forward(request, response);
        } else {
            out.println("<meta http-equiv='refresh' content='3;URL=Home'>");//redirects after 3 seconds
            out.println("<div class=\"width: 100vw; height: 100vh;\">\n"
                    + "<div class=\"error-msg\" style=\"margin: 10px 0;\n"
                    + "  padding: 10px; border-radius: 3px 3px 3px 3px; color: #D8000C;\n"
                    + "  background-color: #FFBABA; width: 640px; margin:0 auto;\">\n"
                    + "  <img src=\"./IMG/cross.png\" style=\"width: 16px;\">\n"
                    + "  Quý khách chưa có đơn thuê nào.\n"
                    + "</div>\n"
                    + "</div>");
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
