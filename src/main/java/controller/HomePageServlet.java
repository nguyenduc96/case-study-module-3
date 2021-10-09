package controller;

import model.Brand;
import model.Category;
import model.Product;
import model.ProductDetail;
import service.brand.BrandService;
import service.category.CategoryService;
import service.product.ProductService;
import service.productdetail.ProductDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomePageServlet", value = "/homePage")
public class HomePageServlet extends HttpServlet {
    private ProductService productService = new ProductService();
    private CategoryService categoryService = new CategoryService();
    private BrandService brandService = new BrandService();
    private ProductDetailService productDetailService = new ProductDetailService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch(action) {
            case "detailProduct": {
                showDetailProduct(request,response);
                break;
            }
            default: {
                showHomePage(request,response);
                break;
            }
        }
    }

    private void showDetailProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.select(id);
        request.setAttribute("product",product);
        ProductDetail productDetail = productDetailService.select(product.getId());
        request.setAttribute("productDetail",productDetail);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewCusomer/viewProduct.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = productService.getAll();
        productList = productList.subList(0,6);
        request.setAttribute("productList",productList);

        List<Product> accessory = productService.selectByCategory(1,4);
        request.setAttribute("accessory", accessory);

        List<Product> newProduct = productService.getNewProduct(6);
        request.setAttribute("newProduct",newProduct);

        List<Category> categories = categoryService.getAll();

        List<Brand> brands = brandService.getAll();

        List<Product> products = productService.getAll();

        HttpSession session = request.getSession();
        session.setAttribute("categories",categories);
        session.setAttribute("brands",brands);
        session.setAttribute("products",products);



        RequestDispatcher dispatcher = request.getRequestDispatcher("viewCusomer/homepage.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
