package controller;

import model.Order;
import model.OrderDetail;
import model.Product;
import service.order.OrderService;
import service.orderdetail.OrderDetailService;
import service.product.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderDetailServlet", value = "/order_detail")
public class OrderDetailServlet extends HttpServlet {
    private OrderDetailService orderDetailService = new OrderDetailService();
    private OrderService orderService = new OrderService();
    private ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }

        switch(action) {
            case "edit": {
                showEditForm(request,response);
                break;
            }
        }
    }

    private void editDetail(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        OrderDetail orderDetail = orderDetailService.select(id);
        orderDetail.setQuantity(quantity);
        orderDetailService.edit(orderDetail);
        int order_id = orderDetail.getOrder_id();
        List<OrderDetail> orderDetails = orderDetailService.selectByOrderId(order_id);
        Order order = orderService.select(order_id);
        request.setAttribute("order",order);
        request.setAttribute("orderDetails",orderDetails);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/showOrderDetail.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        OrderDetail orderDetail = orderDetailService.select(id);
        Product product = productService.select(orderDetail.getProduct_id());
        orderDetail.setProduct(product);
        request.setAttribute("orderDetailEdit",orderDetail);
        Order order = orderService.select(orderDetail.getOrder_id());
        request.setAttribute("order",order);
        List<OrderDetail> orderDetails = orderDetailService.selectByOrderId(orderDetail.getOrder_id());
        request.setAttribute("orderDetails",orderDetails);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order/editOrderDetailForm.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }

        switch(action) {
            case "saveEdit": {
                editDetail(request,response);
                break;
            }
        }
    }
}
