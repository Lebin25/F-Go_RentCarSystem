/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import dao.ProductDAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SearchByAjax", urlPatterns = {"/SearchByAjax"})
public class SearchByAjax extends HttpServlet {

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
        String txtSearch = request.getParameter("txt");
        ProductDAO productdao = new ProductDAO();
        List<Product> list = productdao.searchProductByName(txtSearch);
        PrintWriter out = response.getWriter();
        for (Product p : list) {
            out.println("<div class=\"product col-sm-4\">\n" +
"                            <div class=\"product-card\">\n" +
"                                <div class=\"card-thumbnail\">\n" +
"                                    <img class=\"img-responsive\" src=\"/IMG/"+p.getProductImg()+"\">\n" +
"                                </div>\n" +
"                                <div class=\"card-content\">\n" +
"                                    <div class=\"order-btn\">\n" +
"                                        <p class=\"order-btn-text\">Đặt xe</p>\n" +
"                                    </div>\n" +
"                                    <h1 class=\"card-title\">\n" +
"                                        "+p.getProductName()+"\n" +
"                                    </h1>\n" +
"                                    <h2 class=\"card-sub-title\">\n" +
"                                        "+p.getYearRelease()+"\n" +
"                                    </h2>\n" +
"                                    <div class=\"description\">\n" +
"                                        <ul>\n" +
"                                            <li>\n" +
"                                                <i class=\"fa fa-th hidden-xs hidden-sm\"></i>\n" +
"                                                <span>\n" +
"                                                    <span class=\"attri\">"+p.getLicensePlate()+"</span> </span>\n" +
"                                            </li>\n" +
"                                            <li>\n" +
"                                                <i class=\"fa fa-users hidden-xs hidden-sm\"></i>\n" +
"                                                <span>\n" +
"                                                    <span class=\"attri\">"+p.getSeat()+"</span> </span>\n" +
"                                            </li>\n" +
"                                            <li>\n" +
"                                                <i class=\"fa fa-cogs hidden-xs hidden-sm\"></i>\n" +
"                                                <span>\n" +
"                                                    <span class=\"attri\">"+p.getGear()+"</span> </span>\n" +
"                                            </li>\n" +
"                                        </ul>\n" +
"                                    </div>\n" +
"                                    <div class=\"price\">\n" +
"                                        <div class=\"price-text\">"+p.getPrice()+"</div>\n" +
"                                    </div>\n" +
"                                    <ul class=\"list-inline post-meta\">\n" +
"                                        <li class=\"time-stamp\">\n" +
"                                            <i class=\"fa fa-star\"></i> 5\n" +
"                                        </li>\n" +
"                                        <li class=\"card-comment\">\n" +
"                                            <i class=\"fa fa-comments\"></i><a href=\"#\"> 22 bình luận</a>\n" +
"                                        </li>\n" +
"                                    </ul>\n" +
"                                </div>\n" +
"                            </div>\n" +
"                        </div>");
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
