/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package HomeControl;

import DAO.CustomerDAO;
import DAO.ProductDAO;
import UserDAO.RatingDAO;
import entity.Customer;
import entity.Product;
import entity.Rate;
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
 * @author ADMIN
 */
@WebServlet(name = "ViewCarDetailControl", urlPatterns = {"/view_car_detail"})
public class ViewCarDetailControl extends HttpServlet {

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

        String id = request.getParameter("pid");
        ProductDAO pdao = new ProductDAO();
        Product p = pdao.getProductById(id);

        int c = p.getCategoryID();
        List<Product> plist = pdao.getAllProductByCIDInt(c);

        RatingDAO rdao = new RatingDAO();
        CustomerDAO cdao = new CustomerDAO();

        List<Rate> rlist = rdao.getRateByProductId(id);
        List<Customer> clist = new ArrayList<>();
        for (Rate rate : rlist) {
            int cid = rate.getCustomerID();
            Customer cus = cdao.getCustomerByIdInt(cid);
            clist.add(cus);
        }
        int countTotal = rdao.countTotalByProductID(id);
        int countCmt = rdao.countCmtByProductID(id);
        int countRate = rdao.countRateByProductID(id);

        float avg = (float) rdao.sumRateByProductId(id) / countTotal;

        
        
        request.setAttribute("Listlq", plist);
        request.setAttribute("clist", clist);
        request.setAttribute("rlist", rlist);
        request.setAttribute("detail", p);
        request.setAttribute("count", countTotal);
        request.setAttribute("countCmt", countCmt);
        request.setAttribute("countRate", countRate);
        request.setAttribute("avg", avg);

        request.getRequestDispatcher("viewCarDetail.jsp").forward(request, response);
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
