package controller;

import model.Order;
import model.OrderDetail;
import model.Product;
import service.order.OrderService;
import service.orderdetail.OrderDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static controller.BrandServlet.*;

@WebServlet(name = "OrderServlet", value = "/order")
public class OrderServlet extends HttpServlet {
    private OrderService orderService = new OrderService();
    private OrderDetailService orderDetailService = new OrderDetailService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }

        switch(action) {
            case "detail": {
                showDetail(request,response);
                break;
            }
            case "edit" : {
                showEditForm(request,response);
                break;
            }
            case "delete": {
                deleteOrder(request,response);
                break;
            }
            case "showDeleteOrder": {
                showDeleteOrder(request,response);
                break;
            }
            case "active": {
                activeOrder(request,response);
                break;
            }
            default: {
                showOrder(request,response);
                break;
            }
        }
    }

    private void activeOrder(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            orderService.active(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            response.sendRedirect("order?action=showDeleteOrder");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteOrder(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            orderService.delete(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            response.sendRedirect("/order");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Order order = orderService.select(id);
        request.setAttribute("order",order);
        List<OrderDetail> orderDetails = orderDetailService.selectByOrderId(id);
        request.setAttribute("orderDetails",orderDetails);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/editOrder.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        List<OrderDetail> orderDetails = orderDetailService.selectByOrderId(id);
        Order order = orderService.select(id);
        request.setAttribute("order",order);
        request.setAttribute("orderDetails",orderDetails);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/showOrderDetail.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showOrder(HttpServletRequest request, HttpServletResponse response) {
        int numberActive = 1;
        divisionPage(request,numberActive);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/showOrder.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteOrder(HttpServletRequest request, HttpServletResponse response) {
        int numberActive = 0;
        divisionPage(request,numberActive);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/showDeleteOrder.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void divisionPage(HttpServletRequest request, int numberActive) {
        int sizeOfList = orderService.sizeOfList(numberActive);
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

        List<Order> orders = orderService.getByOffset(offset, LIMIT, numberActive);
        request.setAttribute(TOTAL_PAGE, totalPage);
        request.setAttribute("orders", orders);
        request.setAttribute(ACTIVE, ACTIVE);
        request.setAttribute(PAGE, page);
        request.setAttribute(PREVIOUS, previous);
        request.setAttribute(NEXT, next);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }

        switch(action) {

            case "edit" : {
                editOrder(request,response);
                break;
            }
            default: {
                showOrder(request,response);
                break;
            }
        }
    }

    private void editOrder(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        String status = request.getParameter("status");
        String created = request.getParameter("created_at");
        Date created_at = null;
        try {
            created_at = new SimpleDateFormat("yyyy-MM-dd").parse(created);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Order order = new Order(id,user_id,status,true,created_at);
        orderService.edit(order);
        try {
            response.sendRedirect("order?action=edit&id="+id);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
