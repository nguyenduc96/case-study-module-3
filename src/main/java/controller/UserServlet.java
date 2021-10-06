package controller;

import dao.user.UserDao;
import model.User;
import service.user.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import static controller.BrandServlet.DISABLED;
import static controller.BrandServlet.MESSAGE;

@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private User user;
    private static final long serialVersionUID = 1L;
    private UserService userService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register": {
                insertUser(request, response);
                break;
            }
            case "edit": {
//                updateUser(request, response);
                break;
            }
            case "login": {
                loginAccount(request, response);
                break;
            }
            default: {
                insertUser(request, response);
            }
        }
    }

    private void loginAccount(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User(username, password);

        int id = userService.findIdByUser(user);


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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String number_phone = request.getParameter("number_phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String sex = request.getParameter("sex");
        int role_id = 1;
        java.sql.Date date_of_birth = Date.valueOf(request.getParameter("date_of_birth"));
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date created_at = new java.sql.Date(utilDate.getTime());
        User user = new User(username, password, first_name, last_name, number_phone, email, address, sex, true, role_id, date_of_birth, created_at);
        List<User> users = userService.getAll();
        boolean isAdd = true;
        request.setAttribute("users", users);
        for (User u : users) {
            if (u.getUsername().equals(username)) {
                request.setAttribute(MESSAGE + "name", "Check field is exist");
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
                userService.add(user);
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
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register":
                showNewForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
//                deleteUser(request, response);
                break;
            case "view":
                break;
            case "display":
                listUser(request, response);
                break;
            case "login":
                login(request, response);
                break;
            default:
                showNewForm(request, response);
                break;

        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/login.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) {
    }

//    private void deleteUser(HttpServletRequest request, HttpServletResponse response) {
//        String userName = request.getParameter("userName");
//        try {
//            userDAO.delete();
//            List<User> users = userDAO.select();
//            request.setAttribute("listUser",users);
//            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/managerUser.jsp");
//            requestDispatcher.forward(request,response);
//        } catch (SQLException | IOException | ServletException e) {
//            e.printStackTrace();
//        }
//
//        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/editUser.jsp");
//    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/signup.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/register.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}