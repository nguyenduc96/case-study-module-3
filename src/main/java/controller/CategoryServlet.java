package controller;

import model.Category;
import service.category.CategoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import static controller.BrandServlet.*;

@WebServlet(name = "CategoryServlet", value = "/categories")
public class CategoryServlet extends HttpServlet {
    private CategoryService categoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
                deleteCategoryInfo(request, response);
                break;
            }
            case LIST_DEL: {
                showListDelete(request, response);
                break;
            }
            case ACTIVE: {
                activeCategoryInfo(request, response);
                break;
            }
            default: {
                showAll(request, response);
                break;
            }
        }
    }

    private void showAll(HttpServletRequest request, HttpServletResponse response) {
        int numberActive = 1;
        divisionPage(request, numberActive);
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("category/list.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void activeCategoryInfo(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter(ID));
        try {
            categoryService.active(id);
            response.sendRedirect("/categories?action=listdel");
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showListDelete(HttpServletRequest request, HttpServletResponse response) {
        int numberActive = 0;
        divisionPage(request, numberActive);
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("category/listDelete.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void divisionPage(HttpServletRequest request, int numberActive) {
        int sizeOfList = categoryService.sizeOfList(numberActive);
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

        List<Category> categories = categoryService.getByOffset(offset, LIMIT, numberActive);
        request.setAttribute(TOTAL_PAGE, totalPage);
        request.setAttribute("categories", categories);
        request.setAttribute(ACTIVE, ACTIVE);
        request.setAttribute(PAGE, page);
        request.setAttribute(PREVIOUS, previous);
        request.setAttribute(NEXT, next);
    }

    private void deleteCategoryInfo(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter(ID));
        try {
            categoryService.delete(id);
            response.sendRedirect("/categories");
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter(ID));
        Category category = categoryService.select(id);
        request.setAttribute("category", category);
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
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
            case CREATE: {
                createCategory(request, response);
                break;
            }
            case EDIT: {
                editCategoryInfo(request, response);
                break;
            }
        }
    }

    private void editCategoryInfo(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter(ID));
        String name = request.getParameter(NAME);
        String image = request.getParameter(IMAGE);
        boolean isUpdate = true;
        if (name.equals(EMPTY) || image.equals(EMPTY)) {
            isUpdate = false;
        }
        if (isUpdate) {
            try {
                categoryService.edit(new Category(id, name, image, true));
                response.sendRedirect("/categories");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute(MESSAGE, "Edit fails. Field can not empty");
            RequestDispatcher dispatcher = request.getRequestDispatcher("category/edit.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void createCategory(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter(NAME);
        String image = request.getParameter(IMAGE);
        boolean isCreate = true;
        if (name.equals(EMPTY) || image.equals(EMPTY)) {
            isCreate = false;
        }
        if (isCreate) {
            try {
                categoryService.add(new Category(name, image, true));
                response.sendRedirect("/categories");
            } catch (SQLException | IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute(MESSAGE, "Create fails. Field can not empty");
            RequestDispatcher dispatcher = request.getRequestDispatcher("category/create.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }
}
