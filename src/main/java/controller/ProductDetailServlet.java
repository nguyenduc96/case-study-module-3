package controller;

import service.productdetail.ProductDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductDetailServlet", value = "/productdetail")
public class ProductDetailServlet extends HttpServlet {
    private ProductDetailService productDetailService =  new ProductDetailService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if(action == null) {
            action = "";
        }
        switch(action) {
            case "edit" : {
                editProductDetail(request,response);
                break;
            }
        }
    }

    private void editProductDetail(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
