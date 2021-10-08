package dao.order;

import config.DBConnection;
import model.Order;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class OrderDao implements IOrderDao{
    private Connection connection = DBConnection.getConnection();
    @Override
    public void add(Order order) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("insert into orders (user_id,status,isActive,created_at) values (?,?,?,?)");
        statement.setInt(1,order.getUser_id());
        statement.setString(2,order.getStatus());
        statement.setBoolean(3,order.isActive());
        statement.setDate(4, (Date) order.getCreated_at());
        statement.executeUpdate();
    }

    @Override
    public Order select(int id) {
        Order order = null;
        try {
            PreparedStatement statement = connection.prepareStatement("select * from orders where id = ? ");
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int user_id = rs.getInt("user_id");
                String status = rs.getString("status");
                boolean isActive = rs.getBoolean("isActive");
                Date created_at = rs.getDate("created_at");
                order = new Order(id,user_id,status,isActive,created_at);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return order;
    }

    @Override
    public List<Order> getAll() {
        List<Order> orders = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("select  * from orders");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int user_id = rs.getInt("user_id");
                String status = rs.getString("status");
                boolean isActive = rs.getBoolean("isActive");
                Date created_at = rs.getDate("created_at");
                Order order = new Order(id,user_id,status,isActive,created_at);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean isDelete = false;
        PreparedStatement statement = connection.prepareStatement("update orders set isActive = 0 where id = ?");
        statement.setInt(1,id);
        isDelete = statement.executeUpdate() > 0;
        return isDelete;
    }

    @Override
    public boolean edit(Order order) {
        boolean isUpdate = false;
        try {
            PreparedStatement statement = connection.prepareStatement("update orders set user_id=?,status = ?,isActive = ?,created_at = ? where  id = ?");
            statement.setInt(1,order.getUser_id());
            statement.setString(2,order.getStatus());
            statement.setBoolean(3, order.isActive());
            java.sql.Date created_at = new java.sql.Date(order.getCreated_at().getTime());
            statement.setDate(4, created_at);
            statement.setInt(5,order.getId());
            isUpdate = statement.executeUpdate() > 0;
        } catch (SQLException e){
            e.printStackTrace();
        }
        return isUpdate;
    }

    @Override
    public List<Order> getByOffset(int offset, int limit, int isActive) {
        List<Order> orders = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("select * from orders where isActive = ? limit ? offset ? ;");
            statement.setInt(1, isActive);
            statement.setInt(2, limit);
            statement.setInt(3, offset);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int user_id = rs.getInt("user_id");
                String status = rs.getString("status");
                Date created_at = rs.getDate("created_at");
                boolean isActive2 = true ;
                if(isActive==1) {
                    isActive2 = true;
                } else {
                    isActive2 = false;
                }
                Order order = new Order(id,user_id,status,isActive2,created_at);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public boolean active(int id) throws SQLException {
        boolean isActive;
        PreparedStatement statement = connection.prepareStatement("update orders set isActive = 1 where id = ?;");
        statement.setInt(1, id);
        isActive = statement.executeUpdate() > 0;
        return isActive;
    }

    @Override
    public int sizeOfList(int isActive) {
        int count = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("select count(id) as quantity from orders where isActive = ?;");
            statement.setInt(1, isActive);
            ResultSet rs = statement.executeQuery();
            rs.next();
            count = rs.getInt("quantity");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
//
//    public List<Order> findByUserId(int user_id) {
//        List<Order> orders = new ArrayList<>();
//        try {
//            PreparedStatement statement = connection.prepareStatement("select  * from orders where user_id = ?");
//            statement.setInt(1,user_id);
//            ResultSet rs = statement.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String status = rs.getString("status");
//                boolean isActive = rs.getBoolean("isActive");
//                Date created_at = rs.getDate("created_at");
//                Order order = new Order(id,user_id,status,isActive,created_at);
//                orders.add(order);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return orders;
//    }
}
