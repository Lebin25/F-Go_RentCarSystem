/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminControl;

import AdminDAO.ViewDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Static", urlPatterns = {"/static"})

public class Static extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ViewDAO viewDAO = new ViewDAO();

            HttpSession session = request.getSession();
            if(session.isNew()){
                viewDAO.updateView();
            }
            int view=viewDAO.getViews();
            String formatted = String.format("%05d",view);
            request.setAttribute("view",formatted);
            float total = viewDAO.getTotal();
            request.setAttribute("total",total);
            int num=viewDAO.getNumberGuests();
            request.setAttribute("num",num);
            int rate=viewDAO.getRate();
            request.setAttribute("rate",rate);     
            Map<Integer, Float> map = new HashMap<Integer, Float>();
            map = viewDAO.getMonthly();
            request.getRequestDispatcher("Static.jsp").forward(request, response);
        }catch(Exception e){
            
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Static.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Static.class.getName()).log(Level.SEVERE, null, ex);
        }
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
