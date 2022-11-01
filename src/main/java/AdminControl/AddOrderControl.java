/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AdminControl;


import AdminDAO.CustomerDAO;
import AdminDAO.OrderDAO;
import AdminDAO.ProductDAO;
import entity.Customer;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
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
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String oname = request.getParameter("name");
        String onamecar = request.getParameter("namecar");
        String ophone = request.getParameter("phone");
        String otimeBegin = request.getParameter("timeBegin");
        String otimeEnd = request.getParameter("timeEnd");
        String oaddress = request.getParameter("address");
        
        CustomerDAO cdao = new CustomerDAO();
        Customer c = cdao.getCustomerByName(oname);
        
        int customerId = c.getCustomerId();
        
        ProductDAO productdao = new ProductDAO();
        Product product = productdao.getProductByName(oname);
        int productID = product.getProductID();
        Float price = product.getPrice();
        
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
        Date begin = sdf.parse(otimeBegin);
        Date end = sdf.parse(otimeEnd);
        
        long diff = end.getTime() - begin.getTime();
        TimeUnit time = TimeUnit.DAYS; 
        long diffrence = time.convert(diff, TimeUnit.MILLISECONDS);
        System.out.println(diffrence); 
//        Float money =  ;
        System.out.println(oname+onamecar+ophone+otimeBegin+otimeEnd+oaddress);
        OrderDAO odao = new OrderDAO();
        //odao.addOrder(customerId, productID, otimeBegin, otimeEnd, oaddress, totalMoney, oname);

        response.sendRedirect("manageorder");
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
