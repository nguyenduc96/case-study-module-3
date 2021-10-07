package controller;

import model.Product;
import model.ProductDetail;
import model.User;
import service.product.ProductService;
import service.productdetail.ProductDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import static controller.BrandServlet.*;
import static dao.brand.BrandDao.QUANTITY;
import static dao.product.ProductDao.*;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    public static final String DETAIL = "detail";
    public static final String SHOW_DELETE_PRODUCT = "showDeleteProduct";
    public static final String SEARCH = "search";
    public static final String PRODUCT = "product";
    private static ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            if (user.getRole_id() == 1) {
                response.sendRedirect("login?action=register");
            } else {

                String action = request.getParameter(ACTION);

                if (action == null) {
                    action = EMPTY;
                }
                switch (action) {
                    case CREATE: {
                        showCreateForm(request, response);
                        break;
                    }
                    case EDIT: {
                        showEditForm(request, response);
                        break;
                    }
                    case DELETE: {
                        deleteProduct(request, response);
                        break;
                    }
                    case DETAIL: {
                        showDetail(request, response);
                        break;
                    }
                    case SHOW_DELETE_PRODUCT: {
                        showDeletedProduct(request, response);
                        break;
                    }
                    case ACTIVE: {
                        activeProduct(request, response);
                        break;
                    }
                    default: {
                        showProduct(request, response);
                        break;
                    }
                }
            }
        }else {
            response.sendRedirect("/login?action=login");
        }
    }

    private void activeProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter(ID));
        try {
            productService.active(id);
            response.sendRedirect("product?action=showDeleteProduct");
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeletedProduct(HttpServletRequest request, HttpServletResponse response) {
        int numberActive = 0;
        divisionPage(request, numberActive);
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("product/showDeleteProduct.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void divisionPage(HttpServletRequest request, int numberActive) {
        int sizeOfList = productService.sizeOfList(numberActive);
        final int LIMIT = 6;
        int totalPage;
        if (sizeOfList % LIMIT == 0) {
            totalPage = sizeOfList / LIMIT;
        } else {
            totalPage = sizeOfList / LIMIT + 1;
        }

        if (totalPage == 0) {
            totalPage = 1;
        }

        String inputPage = request.getParameter(PAGE);
        if (inputPage == null) {
            inputPage = "1";
        }
        int page = Integer.parseInt(inputPage);
        int offset = (page - 1) * LIMIT;

        String previous = EMPTY;
        String next = EMPTY;

        if (totalPage == 1) {
            previous = DISABLED;
            next = DISABLED;
        }

        if (page == 1) {
            previous = DISABLED;
        } else if (page == totalPage) {
            next = DISABLED;
        }

        List<Product> products = productService.getByOffset(offset, LIMIT, numberActive);
        request.setAttribute(TOTAL_PAGE, totalPage);
        request.setAttribute("products", products);
        request.setAttribute(ACTIVE, ACTIVE);
        request.setAttribute(PAGE, page);
        request.setAttribute(PREVIOUS, previous);
        request.setAttribute(NEXT, next);
    }

//    private void showDeletedProduct(HttpServletRequest request, HttpServletResponse response) {
//        int  limit = 5;
//        int offset2 = getPage(request, 0);
//        request.setAttribute("page2",offset2);
//        int isActive = 0;
//        List<Product> products = productService.getByOffset(limit, offset2, isActive);
//        request.setAttribute("products",products);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("product/showDeleteProduct.jsp");
//        try {
//            dispatcher.forward(request,response);
//        } catch (ServletException | IOException e) {
//            e.printStackTrace();
//        }
//    }

    private int getPage(HttpServletRequest request, int i) {
        int countRecord = productService.sizeOfList(i);
        int totalPage = countRecord / 5 + 1;
        request.setAttribute("totalPage", totalPage);
        String offset = request.getParameter("page");
        if (offset == null) {
            offset = "0";
        }
        int offset2 = Integer.parseInt(offset);
        String pre = "";
        String next = "";
        if (offset2 == 0) {
            pre = "disabled";
        } else if (offset2 >= (totalPage - 1) * 5) {
            next = "disabled";
        }
        request.setAttribute("pre", pre);
        request.setAttribute("" + "next", next);

        String active = "active";
        request.setAttribute("active", active);
        return offset2;
    }

    private void showSearchProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products;
        String search = request.getParameter(SEARCH);
        if (search == null || search.equals(EMPTY)) {
            products = productService.getAll();
        } else {
            products = productService.findByName(search);
        }
        request.setAttribute("products", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/showProduct.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response) {
        ProductDetailService productDetailService = new ProductDetailService();
        int id = Integer.parseInt(request.getParameter(ID));
        Product product = productService.select(id);
        ProductDetail productDetail = productDetailService.select(id);
        request.setAttribute("product", product);
        request.setAttribute("productDetail", productDetail);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/detailProduct.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter(ID));
        request.setAttribute(ID, id);
        Product product = productService.select(id);
        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/editForm.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/createForm.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showProduct(HttpServletRequest request, HttpServletResponse response) {
        int numberActive = 1;
        divisionPage(request, numberActive);
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("product/showProduct.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

//    private void showProduct(HttpServletRequest request, HttpServletResponse response) {
//        int  limit = 5;
//        int offset2 = getPage(request, 1);
//        request.setAttribute("page2",offset2);
//        int isActive = 1;
//        List<Product> products = productService.getByOffset(limit, offset2, isActive);
//        request.setAttribute("products",products);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("product/showProduct.jsp");
//        try {
//            dispatcher.forward(request,response);
//        } catch (ServletException | IOException e) {
//            e.printStackTrace();
//        }
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter(ACTION);

        if (action == null) {
            action = EMPTY;
        }
        switch (action) {
            case CREATE: {
                createNewProduct(request, response);
                break;
            }
            case EDIT: {
                editProduct(request, response);
                break;
            }
            case SEARCH: {
                showSearchProduct(request, response);
                break;
            }
            default: {
                showProduct(request, response);
                break;
            }
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter(ID));
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
        int id = Integer.parseInt(request.getParameter(ID));
        Product product = getProductInfo(request);
        product.setUpdated_at(new Date());
        product.setId(id);
        boolean isUpdate = productService.edit(product);
        String message = EMPTY;
        if (isUpdate) {
            message = "Changed Information!";
        } else {
            message = "Something Wrong?";
        }
        request.setAttribute(MESSAGE, message);
        request.setAttribute(PRODUCT, product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/editForm.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createNewProduct(HttpServletRequest request, HttpServletResponse response) {
        Product product = getProductInfo(request);
        String message = EMPTY;
        if (product == null) {
            message = "Something Wrong?";
            request.setAttribute(MESSAGE, message);
            RequestDispatcher dispatcher = request.getRequestDispatcher("product/createForm.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
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

    private Product getProductInfo(HttpServletRequest request) {
        String name = request.getParameter(NAME);
        String code = request.getParameter(CODE);
        String image = request.getParameter(IMAGE);
        int quantity = Integer.parseInt(request.getParameter(QUANTITY));
        double price = Double.parseDouble(request.getParameter(PRICE));
        double discount = Double.parseDouble(request.getParameter(DISCOUNT));
        double discount_pct = Double.parseDouble(request.getParameter(DISCOUNT_PCT));
        int category_id = Integer.parseInt(request.getParameter(CATEGORY_ID));
        int brand_id = Integer.parseInt(request.getParameter(BRAND_ID));
        String description = request.getParameter(DESCRIPTION);
        Date create = new Date();
        java.sql.Date create_at = new java.sql.Date(create.getTime());

        if (name.equals(EMPTY) || code.equals(EMPTY) || image.equals(EMPTY)) {
            return null;
        }

        Product product = new Product(name, code, image, quantity, price, discount, discount_pct, true, category_id, brand_id, description, create_at);
        return product;
    }
}
