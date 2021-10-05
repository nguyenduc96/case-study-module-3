package controller;

import model.Product;
import model.ProductDetail;
import service.product.IProductService;
import service.product.ProductService;
import service.productdetail.ProductDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private static IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if(action == null) {
            action = "";
        }
        switch(action) {
            case "create": {
                showCreateForm(request,response);
                break;
            }
            case "edit": {
                showEditForm(request,response);
                break;
            }
            case "delete": {
                deleteProduct(request,response);
                break;
            }
            case "detail": {
                showDetail(request,response);
                break;
            }
            default: {
                showProduct(request,response);
                break;
            }
        }
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response) {
        ProductDetailService productDetailService = new ProductDetailService();
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.select(id);
        ProductDetail productDetail = productDetailService.select(id);
        request.setAttribute("product",product);
        request.setAttribute("productDetail",productDetail);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/detailProduct.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id",id);
        Product product = productService.select(id);
        request.setAttribute("product",product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/editForm.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/createForm.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showProduct(HttpServletRequest request, HttpServletResponse response) {
        int  limit = 5;
        List<Product> products ;
        String search = request.getParameter("search");
        if(search == null || search.equals(""))
        {
            products = productService.getAll();
        }
        else {
            products = productService.findByName(search);
        }
        int countRecord = productService.sizeOfListIsActive();
        int totalPage = countRecord/5 + 1;
        request.setAttribute("totalPage",totalPage);
        String offset = request.getParameter("offset");
        if (offset==null) {
            offset = "0";
        }
        int offset2 = Integer.parseInt(offset);
        String pre = "";
        String next = "";
        if(offset2==0) {
            pre = "disabled";
        }else if(offset2 >= (totalPage-1)*5) {
            next = "disabled";
        }
        request.setAttribute("pre",pre);
        request.setAttribute("" + "next", next);

        String active = "active";
        request.setAttribute("active",active);
        request.setAttribute("offset2",offset2);
        List<Product> productList = productService.getByOffset(limit, offset2);
        request.setAttribute("products",productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/showProduct.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
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
            case "create": {
                createNewProduct(request,response);
                break;
            }
            case "edit": {
                editProduct(request,response);
                break;
            }
            default: {
                showProduct(request,response);
                break;
            }
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            productService.delete(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            response.sendRedirect("product");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = getProductInfor(request);
        product.setUpdated_at(new Date());
        product.setId(id);
        boolean isUpdate = productService.edit(product);
        String message = "";
        if(isUpdate) {
            message = "Changed Information!";
        }
        else {
            message = "Something Wrong?";
        }
        request.setAttribute("message",message);
        request.setAttribute("product",product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/editForm.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createNewProduct(HttpServletRequest request, HttpServletResponse response) {
        Product product = getProductInfor(request);
        String message = "";
        if(product == null) {
            message = "Something Wrong?";
            request.setAttribute("message",message);
            RequestDispatcher dispatcher = request.getRequestDispatcher("product/createForm.jsp");
            try {
                dispatcher.forward(request,response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
        else {
            try {
                productService.add(product);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                response.sendRedirect("product");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private Product getProductInfor(HttpServletRequest request) {
        String name = request.getParameter("name");
        String code = request.getParameter("code");
        String image = request.getParameter("image");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        double discount = Double.parseDouble(request.getParameter("discount"));
        double discount_pct = Double.parseDouble(request.getParameter("discount_pct"));
        int category_id = Integer.parseInt(request.getParameter("category_id"));
        int brand_id = Integer.parseInt(request.getParameter("brand_id"));
        String description = request.getParameter("description");
        Date create = new Date();
        java.sql.Date create_at = new java.sql.Date(create.getTime());

        if(name.equals("") || code.equals("") || image.equals("")){
            return null;
        }

        Product product = new Product(name,code,image,quantity,price,discount,discount_pct,true,category_id,brand_id,description,create_at);
        return product;
    }
}
