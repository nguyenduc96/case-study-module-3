package service.order;

import dao.order.OrderDao;
import model.Order;

import java.sql.SQLException;
import java.util.List;

public class OrderService implements IOrderService {
    private OrderDao orderDao = new OrderDao();

    @Override
    public void add(Order order) throws SQLException {

    }

    @Override
    public Order select(int id) {
        return orderDao.select(id);
    }

    @Override
    public List<Order> getAll() {
        return orderDao.getAll();
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return orderDao.delete(id);
    }

    @Override
    public boolean edit(Order order) {
        return orderDao.edit(order);
    }

    @Override
    public List<Order> getByOffset(int offset, int limit, int isActive) {
        return orderDao.getByOffset(offset,limit,isActive);
    }

    @Override
    public boolean active(int id) throws SQLException {
        return orderDao.active(id);
    }

    @Override
    public int sizeOfList(int isActive) {
        return orderDao.sizeOfList(isActive);
    }
}
