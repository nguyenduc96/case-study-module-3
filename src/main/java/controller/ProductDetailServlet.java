package controller;

import model.ProductDetail;
import service.productdetail.ProductDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

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
            case "delete" : {
                deleteProductDetail(request,response);
                break;
            }
        }
    }

    private void deleteProductDetail(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int product_id = Integer.parseInt(request.getParameter("product_id"));
        ProductDetail productDetail = new ProductDetail();
        productDetail.setId(id);
        productDetail.setProduct_id(id);
        productDetailService.edit(productDetail);
        try {
            response.sendRedirect("product?action=detail&id="+product_id);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

    private ProductDetail getProductDetail(HttpServletRequest request, int product_id, int id) {
        ProductDetail productDetail;
        String image = request.getParameter("image");
        String screen_tech = request.getParameter("screen_tech");
        String screen_resolution = request.getParameter("screen_resolution");
        String front_camera_tech = request.getParameter("front_camera_tech");
        String rear_camera_teach = request.getParameter("rear_camera_teach");
        String operator_system = request.getParameter("operator_system");
        String cpu = request.getParameter("cpu");
        String ram = request.getParameter("ram");
        String memory = request.getParameter("memory");
        String connect = request.getParameter("connect");
        String pin = request.getParameter("pin");
        String charge = request.getParameter("charge");
        productDetail = new ProductDetail(id, product_id,true,image,screen_tech,screen_resolution,front_camera_tech,rear_camera_teach,operator_system,cpu,ram,memory,connect,pin,charge);
        return productDetail;
    }

    private void editProductDetail(HttpServletRequest request, HttpServletResponse response) {
        int product_id = Integer.parseInt(request.getParameter("product_id"));
        ProductDetail productDetail = productDetailService.select(product_id);
        if(productDetail==null) {
            productDetail = getProductDetail(request,product_id,product_id);
            try {
                productDetailService.add(productDetail);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        else {
            int  id = productDetail.getId();
            productDetail = getProductDetail(request, product_id, id);
            productDetailService.edit(productDetail);
        }
        try {
            response.sendRedirect("product?action=detail&id="+product_id);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
