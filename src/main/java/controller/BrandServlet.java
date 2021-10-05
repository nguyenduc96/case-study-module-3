package controller;

import model.Brand;
import service.brand.BrandService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BrandServlet", value = "/brands")
public class BrandServlet extends HttpServlet {
    public static final String EMPTY = "";
    public static final String CREATE = "create";
    public static final String DISABLED = "disabled";
    public static final String EDIT = "edit";
    public static final String DELETE = "delete";
    public static final String LISTDEL = "listdel";
    BrandService brandService = new BrandService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

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
                deleteBrandInfo(request, response);
                break;
            }
            case LISTDEL: {
                showListDelete(request, response);
                break;
            }
            case "active": {
                activeBrandInfo(request, response);
                break;
            }
            default: {
                showAll(request, response);
                break;
            }
        }
    }

    private void activeBrandInfo(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            brandService.active(id);
            response.sendRedirect("/brands");
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showListDelete(HttpServletRequest request, HttpServletResponse response) {
        int sizeOfList = brandService.sizeOfList();
        final int LIMIT = 6;
        int totalPage;
        if (sizeOfList % LIMIT == 0) {
            totalPage = sizeOfList / LIMIT;
        } else {
            totalPage = sizeOfList / LIMIT + 1;
        }

        String inputPage = request.getParameter("page");
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

        List<Brand> brands = brandService.getByOffset(offset, LIMIT);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("brands", brands);
        String active = "active";
        request.setAttribute("active", active);
        request.setAttribute("page", page);
        request.setAttribute("previous", previous);
        request.setAttribute("next", next);
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("brand/listDelete.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteBrandInfo(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            brandService.delete(id);
            response.sendRedirect("/brands");
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Brand brand = brandService.select(id);
        request.setAttribute("brand", brand);
        RequestDispatcher dispatcher = request.getRequestDispatcher("brand/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("brand/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showAll(HttpServletRequest request, HttpServletResponse response) {
        int sizeOfList = brandService.sizeOfList();
        final int LIMIT = 6;
        int totalPage;
        if (sizeOfList % LIMIT == 0) {
            totalPage = sizeOfList / LIMIT;
        } else {
            totalPage = sizeOfList / LIMIT + 1;
        }

        String inputPage = request.getParameter("page");
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

        List<Brand> brands = brandService.getByOffset(offset, LIMIT);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("brands", brands);
        String active = "active";
        request.setAttribute("active", active);
        request.setAttribute("page", page);
        request.setAttribute("previous", previous);
        request.setAttribute("next", next);
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("brand/list.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = EMPTY;
        }
        switch (action) {
            case CREATE: {
                createBand(request, response);
                break;
            }
            case EDIT: {
                editBrandInfo(request, response);
                break;
            }
        }
    }

    private void editBrandInfo(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        boolean isUpdate = true;
        if (name.equals(EMPTY) || image.equals(EMPTY)) {
            isUpdate = false;
        }
        if (isUpdate) {
            try {
                brandService.edit(new Brand(id, name, image, true));
                response.sendRedirect("/brands");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("message", "Edit fails. Field can not empty");
            RequestDispatcher dispatcher = request.getRequestDispatcher("brand/edit.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void createBand(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        boolean isCreate = true;
        if (name.equals(EMPTY) || image.equals(EMPTY)) {
            isCreate = false;
        }
        if (isCreate) {
            try {
                brandService.add(new Brand(name, image, true));
                response.sendRedirect("/brands");
            } catch (SQLException | IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("message", "Create fails. Field can not empty");
            RequestDispatcher dispatcher = request.getRequestDispatcher("brand/create.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }
}
