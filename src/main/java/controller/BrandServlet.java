package controller;

import model.Brand;
import service.brand.BrandService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BrandServlet", value = "/brands")
public class BrandServlet extends HttpServlet {
    public static final String EMPTY = "";
    public static final String CREATE = "create";
    public static final String DISABLED = "disabled";
    BrandService brandService = new BrandService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = EMPTY;
        }
        switch (action) {
            case CREATE: {
                break;
            }
            case "2" :{
                break;
            }
            default: {
                showAll(request, response);
                break;
            }
        }
    }

    private void showAll(HttpServletRequest request, HttpServletResponse response) {
        int sizeOfList = brandService.sizeOfList();
        final int LIMIT = 6;
        int totalPage = 0;
        if (sizeOfList % LIMIT == 0) {
            totalPage = sizeOfList / LIMIT;
        } else {
            totalPage = sizeOfList / LIMIT + 1;
        }

        request.setAttribute("totalPage", totalPage);
        String inputPage = request.getParameter("page");
        if (inputPage == null) {
            inputPage = "1";
        }
        int page = Integer.parseInt(inputPage);
        int offset = (page -1) * LIMIT;

        String previous = EMPTY;
        String next = EMPTY;

        if (page == 1) {
            previous = DISABLED;
        } else if (page == totalPage) {
            next = DISABLED;
        }

        List<Brand> brands = brandService.getByOffset(offset, LIMIT);
        request.setAttribute("brands", brands);
        String active = "active";
        request.setAttribute("active", active);
        request.setAttribute("page", page);
        request.setAttribute("previous", previous);
        request.setAttribute("next", next);
        RequestDispatcher dispatcher = request.getRequestDispatcher("brand/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        showAll(request, response);
    }
}
