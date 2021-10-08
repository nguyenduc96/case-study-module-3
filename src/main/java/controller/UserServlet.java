package controller;

import model.Brand;
import model.Role;
import model.User;
import service.Role.RoleService;
import service.user.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import static controller.BrandServlet.*;

@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {

    public static final String REGISTER = "register";
    public static final String LOGIN = "login";
    public static final String USERNAME = "username";
    public static final String PASSWORD = "password";
    public static final String FIRST_NAME = "first_name";
    public static final String LAST_NAME = "last_name";
    public static final String NUMBER_PHONE = "number_phone";
    public static final String EMAIL = "email";
    public static final String ADDRESS = "address";
    public static final String SEX = "sex";
    public static final String DATE_OF_BIRTH = "date_of_birth";
    public static final String MANAGE = "manage";

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private User user;
    public static final UserService USER_SERVICE = new UserService();
    private final RoleService ROLE_SERVICE = new RoleService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            if (user.getRole_id() == 2) {
                String action = request.getParameter(ACTION);

                if (action == null) {
                    action = EMPTY;
                }
                switch (action) {
                    case MANAGE: {
                        showAll(request, response);
                        break;
                    }
                    case DELETE: {

                    }
                    default:
                        showAll(request, response);
                        break;
                }
            }
        } else {
            response.sendRedirect("login?action=login");
        }
    }



    private void showAll(HttpServletRequest request, HttpServletResponse response) {
        int numberActive = 1;
        divisionPage(request, numberActive);
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void divisionPage(HttpServletRequest request, int numberActive) {
        int sizeOfList = USER_SERVICE.sizeOfList(numberActive);
        final int LIMIT = 5;
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

        List<User> users = USER_SERVICE.getByOffset(offset, LIMIT, numberActive);
        for (User user : users) {
            int role_id = user.getRole_id();
            Role role = ROLE_SERVICE.select(role_id);
            user.setRole(role);
        }
        request.setAttribute(TOTAL_PAGE, totalPage);
        request.setAttribute("users", users);
        request.setAttribute(ACTIVE, ACTIVE);
        request.setAttribute(PAGE, page);
        request.setAttribute(PREVIOUS, previous);
        request.setAttribute(NEXT, next);
    }
}