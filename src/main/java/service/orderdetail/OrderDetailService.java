package service.orderdetail;

import dao.orderdetail.OrderDetailDao;
import model.OrderDetail;
import model.Product;
import service.product.ProductService;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDetailService implements IOrderDetailService{
    private OrderDetailDao orderDetailDao = new OrderDetailDao();
    @Override
    public void add(OrderDetail orderDetail) throws SQLException {
        orderDetailDao.add(orderDetail);
    }

    @Override
    public OrderDetail select(int order_id) {
        return orderDetailDao.select(order_id);
    }

    public List<OrderDetail> selectByOrderId(int orders_id) {
        return orderDetailDao.selectByOrdersId(orders_id);
    }

    @Override
    public List<OrderDetail> getAll() {
        List<OrderDetail> orderDetails = orderDetailDao.getAll();
        ProductService productService = new ProductService();
        for(OrderDetail orderDetail : orderDetails) {
            int product_id = orderDetail.getProduct_id();
            Product product = productService.select(product_id);
            orderDetail.setProduct(product);
        }
        return orderDetails;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return orderDetailDao.delete(id);
    }

    @Override
    public boolean edit(OrderDetail orderDetail) {
        return orderDetailDao.edit(orderDetail);
    }

    @Override
    public List<OrderDetail> getByOffset(int offset, int limit, int isActive) {
        return orderDetailDao.getByOffset(offset,limit,isActive);
    }

    @Override
    public boolean active(int id) throws SQLException {
        return orderDetailDao.active(id);
    }

    @Override
    public int sizeOfList(int isActive) {
        return orderDetailDao.sizeOfList(isActive);
    }
}
