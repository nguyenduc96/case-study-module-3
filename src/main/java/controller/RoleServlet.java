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
import java.io.IOException;
import java.util.List;

@WebServlet(name = "RoleServlet", value = "/role")
public class RoleServlet extends HttpServlet {
    private IRoleService roleService = new RoleService();
    private IUserService userService = new UserService();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create": {
                break;
            }
            case "edit": {
                break;
            }
            case "view": {
                showUserByRole(request, response);
                break;
            }
            default: {
                showRoleList(request, response);
                break;
            }
        }
    }

    private void showRoleList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int roleId = Integer.parseInt(request.getParameter("id"));
        List<User> users = userService.getAll();
        request.setAttribute("users", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/role/view.jsp");
        dispatcher.forward(request, response);
    }

    private void showUserByRole(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Role> roles = roleService.getAll();
        request.setAttribute("roles", roles);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/role/list.jsp");
        dispatcher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
