package controller;

import dao.user.UserDAO;
import model.User;
import service.user.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                insertUser(request, response);
                break;
            case "edit":
                try {
                    updateUser(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
        }
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) {
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String number_phone = request.getParameter("number_phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String sex = request.getParameter("sex");
        String role = request.getParameter("role");
        Date date = Date.valueOf(request.getParameter("date_of_birth"));
        java.sql.Date date_of_birth = new java.sql.Date(date.getDate());
        User user = new User( userName, passWord, first_name, last_name, number_phone, email, address, sex, true, role, date_of_birth);
        userDAO.edit(user);
        request.setAttribute("message", "User information was updated");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/editUser.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String number_phone = request.getParameter("number_phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String sex = request.getParameter("sex");
        String role = request.getParameter("role");
        Date date = Date.valueOf(request.getParameter("date_of_birth"));
        java.sql.Date date_of_birth = new java.sql.Date(date.getDate());
        java.util utilDate = new java.util.Date();
        java.sql.Date created_at = new java.sql.Date(utilDate.getTime());
        User newUser = new User( userName, passWord, first_name, last_name, number_phone, email, address, sex, true, role, date_of_birth, created_at);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/signup.jsp");
        request.setAttribute("message", "New user was created");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
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
            case "create":
                showNewForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            case "view":
                break;
            case "display":
                listUser(request, response);
                break;
            case "login":
                login(request, response);
                break;

        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) {
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) {
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) {
        String userName = request.getParameter("userName");
        try {
            userDAO.delete();
            List<User> users = userDAO.select();
            request.setAttribute("listUser",users);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/managerUser.jsp");
            requestDispatcher.forward(request,response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/editUser.jsp");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/signup.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        List<User> users = userDAO.select();

        request.setAttribute("listUser", users);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/managerUser.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}