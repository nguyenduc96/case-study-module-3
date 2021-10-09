package controller;

import model.Role;
import model.User;
import service.Role.IRoleService;
import service.Role.RoleService;
import service.user.IUserService;
import service.user.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import static controller.BrandServlet.*;
import static controller.BrandServlet.MESSAGE;
import static controller.UserServlet.*;

@WebServlet(name = "RoleServlet", value = "/login")
public class LoginServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            String action = request.getParameter(ACTION);
            if (action == null) {
                action = EMPTY;
            }
            switch (action) {
                case REGISTER: {
                    showFormRegister(request, response);
                    break;
                }
                case LOGIN: {
                    showFormLogin(request, response);
                    break;
                }
                default: {
                    showFormLogin(request, response);
                    break;
                }
            }
        }
    }

    private void showFormLogin(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
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

    @Override
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
            case LOGIN: {
                loginAccount(request, response);
                break;
            }
        }
    }

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
                request.setAttribute(MESSAGE, "Account was created");
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
    }

    private void loginAccount(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter(USERNAME);
        String password = request.getParameter(PASSWORD);
        User user = USER_SERVICE.findUser(username, password);

        if (user == null) {
            request.setAttribute(MESSAGE, "Username or password incorrect");
            try {
                request.getRequestDispatcher("index.jsp").include(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            try {
                if (user.getRole_id() == 1) {
                    response.sendRedirect("homePage");
                } else {
                    response.sendRedirect("admin");
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


}
