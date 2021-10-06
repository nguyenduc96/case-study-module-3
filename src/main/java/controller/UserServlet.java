package controller;

import model.Brand;
import model.User;
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
    private static final long serialVersionUID = 1L;
    private final UserService USER_SERVICE = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter(ACTION);
        if (action == null) {
            action = EMPTY;
        }
        switch (action) {
            case REGISTER: {
                insertUser(request, response);
                break;
            }
            case EDIT: {
//                updateUser(request, response);
                break;
            }
            case LOGIN: {
                loginAccount(request, response);
                break;
            }
        }
    }

    private void loginAccount(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter(USERNAME);
        String password = request.getParameter(PASSWORD);
        User user = USER_SERVICE.findUser(username, password);
        RequestDispatcher dispatcher = null;
        if (user == null) {
            request.setAttribute(MESSAGE, "Username or password incorrect");
            dispatcher = request.getRequestDispatcher("user/login.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            try {
                response.sendRedirect("categories");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

//    private void updateUser(HttpServletRequest request, HttpServletResponse response) {
//        String userName = request.getParameter("userName");
//        String passWord = request.getParameter("passWord");
//        String first_name = request.getParameter("first_name");
//        String last_name = request.getParameter("last_name");
//        String number_phone = request.getParameter("number_phone");
//        String email = request.getParameter("email");
//        String address = request.getParameter("address");
//        String sex = request.getParameter("sex");
//        int role_id = 1;
//        Date date = Date.valueOf(request.getParameter("date_of_birth"));
//        java.sql.Date date_of_birth = new java.sql.Date(date.getDate());
//        User user = new User( userName, passWord, first_name, last_name, number_phone, email, address, sex, true, role_id, date_of_birth);
//        userDAO.edit(user);
//        request.setAttribute("message", "User information was updated");
//        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/editUser.jsp");
//        try {
//            requestDispatcher.forward(request, response);
//        } catch (ServletException | IOException e) {
//            e.printStackTrace();
//        }
//    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter(USERNAME);
        String password = request.getParameter(PASSWORD);
        String first_name = request.getParameter(FIRST_NAME);
        String last_name = request.getParameter(LAST_NAME);
        String number_phone = request.getParameter(NUMBER_PHONE);
        String email = request.getParameter(EMAIL);
        String address = request.getParameter(ADDRESS);
        String sex = request.getParameter(SEX);
        int role_id = 1;
        java.sql.Date date_of_birth = Date.valueOf(request.getParameter(DATE_OF_BIRTH));
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date created_at = new java.sql.Date(utilDate.getTime());
        User user = new User(username, password, first_name, last_name, number_phone, email, address, sex, true, role_id, date_of_birth, created_at);
        List<User> users = USER_SERVICE.getAll();
        boolean isAdd = true;
        request.setAttribute("users", users);
        for (User u : users) {
            if (u.getUsername().equals(username)) {
                request.setAttribute(MESSAGE + NAME, "Check field is exist");
                isAdd = false;
            } else if (u.getEmail().equals(email)) {
                request.setAttribute(MESSAGE + "mail", "Check field is exist");
                isAdd = false;
            } else if (u.getNumber_phone().equals(number_phone)) {
                request.setAttribute(MESSAGE + "phone", "Check field is exist");
                isAdd = false;
            } else {
                isAdd = true;
            }
        }
        if (isAdd) {
            try {
                USER_SERVICE.add(user);
                request.setAttribute(MESSAGE, "New user was created");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/register.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
        requestDispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter(ACTION);
        if (action == null) {
            action = EMPTY;
        }
        switch (action) {
            case REGISTER: {
                showFormRegister(request, response);
                break;
            }
            case EDIT: {
                showEditForm(request, response);
                break;
            }
            case "delete":
                break;
            case "display": {
                listUser(request, response);
                break;
            }
            case "login": {
                showFormLogin(request, response);
                break;
            }
            case MANAGE: {
                showAll(request, response);
                break;
            }
            default:
                break;

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

        List<User> users = USER_SERVICE.getByOffset(offset, LIMIT, numberActive);
        request.setAttribute(TOTAL_PAGE, totalPage);
        request.setAttribute("users", users);
        request.setAttribute(ACTIVE, ACTIVE);
        request.setAttribute(PAGE, page);
        request.setAttribute(PREVIOUS, previous);
        request.setAttribute(NEXT, next);
    }

    private void showFormLogin(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/login.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/signup.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormRegister(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/register.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}