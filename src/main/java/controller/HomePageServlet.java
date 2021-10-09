package controller;

import model.Brand;
import model.Category;
import model.Product;
import model.User;
import service.brand.BrandService;
import service.category.CategoryService;
import service.product.ProductService;

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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            if (user.getRole_id() == 1) {
                String action = request.getParameter("action");
                if (action == null) {
                    action = "";
                }
                switch (action) {
                    case "detailProduct": {
                        showDetailProduct(request, response);
                        break;
                    }
                    default: {
                        showHomePage(request, response);
                        break;
                    }
                }
            }
        } else {
            response.sendRedirect("login?action=login");
        }
    }

    private void showDetailProduct(HttpServletRequest request, HttpServletResponse response) {

    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = productService.getAll();
        productList = productList.subList(0,0);
        request.setAttribute("productList",productList);

        List<Product> accessory = productService.selectByCategory(1,4);
        request.setAttribute("accessory", accessory);

        List<Product> newProduct = productService.getNewProduct(6);
        request.setAttribute("newProduct",newProduct);

        List<Category> categories = categoryService.getAll();
        request.setAttribute("categories",categories);

        List<Brand> brands = brandService.getAll();
        request.setAttribute("brands",brands);

        List<Product> products = productService.getAll();
        request.setAttribute("products",products);

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
