package controller;

import model.ProductDetail;
import model.User;
import service.productdetail.ProductDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

import static controller.BrandServlet.*;

@WebServlet(name = "ProductDetailServlet", value = "/productdetail")
public class ProductDetailServlet extends HttpServlet {
    public static final String PRODUCT_ID = "product_id";
    public static final String SCREEN_TECH = "screen_tech";
    public static final String SCREEN_RESOLUTION = "screen_resolution";
    public static final String FRONT_CAMERA_TECH = "front_camera_tech";
    public static final String REAR_CAMERA_TEACH = "rear_camera_teach";
    public static final String OPERATOR_SYSTEM = "operator_system";
    public static final String CPU = "cpu";
    public static final String RAM = "ram";
    public static final String MEMORY = "memory";
    public static final String CONNECT = "connect";
    public static final String PIN = "pin";
    public static final String CHARGE = "charge";
    private ProductDetailService productDetailService = new ProductDetailService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            if (user.getRole_id() == 1) {
                response.sendRedirect("homePage");
            } else {
                String action = request.getParameter(ACTION);

                if (action == null) {
                    action = EMPTY;
                }
                switch (action) {
                    case DELETE: {
                        deleteProductDetail(request, response);
                        break;
                    }
                }
            }
        } else {
            response.sendRedirect("/login?action=login");
        }
    }

    private void deleteProductDetail(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter(ID));
        int product_id = Integer.parseInt(request.getParameter(PRODUCT_ID));
        ProductDetail productDetail = new ProductDetail();
        productDetail.setId(id);
        productDetail.setProduct_id(id);
        productDetailService.edit(productDetail);
        try {
            response.sendRedirect("product?action=detail&id=" + product_id);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter(ACTION);

        if (action == null) {
            action = EMPTY;
        }
        switch (action) {
            case EDIT: {
                editProductDetail(request, response);
                break;
            }
        }
    }

    private ProductDetail getProductDetail(HttpServletRequest request, int product_id, int id) {
        ProductDetail productDetail;
        String image = request.getParameter(IMAGE);
        String screen_tech = request.getParameter(SCREEN_TECH);
        String screen_resolution = request.getParameter(SCREEN_RESOLUTION);
        String front_camera_tech = request.getParameter(FRONT_CAMERA_TECH);
        String rear_camera_teach = request.getParameter(REAR_CAMERA_TEACH);
        String operator_system = request.getParameter(OPERATOR_SYSTEM);
        String cpu = request.getParameter(CPU);
        String ram = request.getParameter(RAM);
        String memory = request.getParameter(MEMORY);
        String connect = request.getParameter(CONNECT);
        String pin = request.getParameter(PIN);
        String charge = request.getParameter(CHARGE);
        productDetail = new ProductDetail(id, product_id, true, image, screen_tech, screen_resolution, front_camera_tech, rear_camera_teach, operator_system, cpu, ram, memory, connect, pin, charge);
        return productDetail;
    }

    private void editProductDetail(HttpServletRequest request, HttpServletResponse response) {
        int product_id = Integer.parseInt(request.getParameter(PRODUCT_ID));
        ProductDetail productDetail = productDetailService.select(product_id);
        if (productDetail == null) {
            productDetail = getProductDetail(request, product_id, product_id);
            try {
                productDetailService.add(productDetail);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            int id = productDetail.getId();
            productDetail = getProductDetail(request, product_id, id);
            productDetailService.edit(productDetail);
        }
        try {
            response.sendRedirect("product?action=detail&id=" + product_id);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
