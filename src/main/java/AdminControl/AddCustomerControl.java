/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AdminControl;

import DAO.CustomerDAO;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author ADMIN
 */
@MultipartConfig(
        location = "E:\\study\\Semester_5\\SWP391\\Project_FGO\\F-Go\\src\\main\\webapp\\images",
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
@WebServlet(name = "AddCustomerControl", urlPatterns = {"/addcustomer"})
public class AddCustomerControl extends HttpServlet {
    private static final long SerialVersionUID = 1L;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        
        String cname = request.getParameter("name");
        String cphone = request.getParameter("phone");
        String caccountID = request.getParameter("accountID");
        String cisVerify = "0";
        String cemail =request.getParameter("email");
        
        String[] imgs = new String[3];
        
        try {
            Collection<Part> parts = request.getParts();
            int i = 0;
            for(Part filePart : parts){
                String filename = getFileName(filePart);
                if(filename != null){
                    filePart.write(filename);
                    imgs[i] = filename;
                    i++;
                }
                System.out.println(filename);
            }
        } catch (Exception e) {
        }
        
        String cnationalId = imgs[0];
        String cdrivingLicense = imgs[1];
        String faceImg = imgs[2];
        
      
        System.out.println(cname + cphone + cemail + cnationalId + cdrivingLicense + caccountID + cisVerify + faceImg);

        CustomerDAO cdao = new CustomerDAO();
        cdao.addCustomer(cname, cphone, cemail, cnationalId, cdrivingLicense, caccountID, cisVerify, faceImg);
//                response.sendRedirect("managecustomer");
        out.println("<meta http-equiv='refresh' content='3;URL=managecustomer'>");//redirects after 3 seconds
        out.println("<div style=\"width: 100vw; height: 100vh;\">\n"
                + "<div class=\"success-msg\" style=\"color: #270;background-color: #DFF2BF;margin: 10px 0;padding: 10px;border-radius: 3px 3px 3px 3px; width: 640px; margin:0 auto;\">\n"
                + "  <img src=\"https://cdn-icons-png.flaticon.com/512/5290/5290058.png\" style=\"width: 16px;\">\n"
                + "  Cập nhật thông tin thành công! Hệ thống đang cập nhật thông tin của bạn.\n"
                + "</div>\n"
                + "</div>");

    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
   
    private String  getFileName(Part part){
        final String  partHeader = part.getHeader("content-disposition");
        System.out.println("*****partHeader :"+ partHeader);
        for(String content : part.getHeader("content-disposition").split(";")){
            if(content.trim().startsWith("filename")){
                return content.substring(content.indexOf('=')+1).trim().replace("\"", "" );
            }
        }
        return null;
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

