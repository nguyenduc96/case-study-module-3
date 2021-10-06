package controller;

import model.Order;
import model.OrderDetail;
import service.order.OrderService;
import service.orderdetail.OrderDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "OrderServlet", value = "/order")
public class OrderServlet extends HttpServlet {
    private OrderService orderService = new OrderService();
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
            default: {
                showOrder(request,response);
                break;
            }
        }
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        OrderDetailService orderDetailService = new OrderDetailService();
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
        List<Order> orders = orderService.getAll();
        request.setAttribute("orders",orders);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/showOrder.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
