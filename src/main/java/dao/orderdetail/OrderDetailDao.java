package dao.orderdetail;

import config.DBConnection;
import model.OrderDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDetailDao implements IOrderDetailDao{
    private Connection connection = DBConnection.getConnection();
    @Override
    public void add(OrderDetail orderDetail) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("insert into order_detail (id,product_id,orders_id,quantity,isActive) values (?,?,?,?,?)");
        statement.setInt(1,orderDetail.getId());
        statement.setInt(2,orderDetail.getProduct_id());
        statement.setInt(3,orderDetail.getOrder_id());
        statement.setInt(4,orderDetail.getQuantity());
        statement.setBoolean(5,orderDetail.isActive());
        statement.executeUpdate();
    }


    @Override
    public OrderDetail select(int id) {
        OrderDetail orderDetail = null;
        try {
            String query = "select od.*,p.price*od.quantity as 'tientruocgiam',p.price*od.quantity - p.price*od.quantity*p.discount_pct - p.discount as 'tiensaugiam' from order_detail od join product p on od.product_id = p.id join orders o on od.orders_id = o.id where od.id = ?;";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                int orders_id = rs.getInt("orders_id");
                int product_id = rs.getInt("product_id");
                int quantity = rs.getInt("quantity");
                double beforeDiscountMoney = rs.getDouble("tientruocgiam");
                double afterDiscountMoney = rs.getDouble("tiensaugiam");
                orderDetail = new OrderDetail(id,product_id,orders_id,quantity,true,beforeDiscountMoney,afterDiscountMoney);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orderDetail;
    }

    public List<OrderDetail> selectByOrdersId(int orders_id) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String query = "select od.*,p.price*od.quantity as 'tientruocgiam',p.price*od.quantity - p.price*od.quantity*p.discount_pct - p.discount as 'tiensaugiam' from order_detail od join product p on od.product_id = p.id join orders o on od.orders_id = o.id where orders_id = ?;";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1,orders_id);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                int id = rs.getInt("id");
                int product_id = rs.getInt("product_id");
                int quantity = rs.getInt("quantity");
                double beforeDiscountMoney = rs.getDouble("tientruocgiam");
                double afterDiscountMoney = rs.getDouble("tiensaugiam");
                OrderDetail orderDetail = new OrderDetail(id,product_id,orders_id,quantity,true,beforeDiscountMoney,afterDiscountMoney);
                orderDetails.add(orderDetail);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderDetails;
    }

    @Override
    public List<OrderDetail> getAll() {
        List<OrderDetail> orderDetails = new ArrayList<>() ;
        try {
            PreparedStatement statement = connection.prepareStatement("select * from order_detail");
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                int id = rs.getInt("id");
                int product_id = rs.getInt("product_id");
                int orders_id = rs.getInt("orders_id");
                int quantity = rs.getInt("quantity");
                boolean isActive = rs.getBoolean("isActive");
                double beforeDiscountMoney = rs.getDouble("tientruocgiam");
                double afterDiscountMoney = rs.getDouble("tiensaugiam");
                OrderDetail orderDetail = new OrderDetail(id,product_id,orders_id,quantity,true,beforeDiscountMoney,afterDiscountMoney);
                orderDetails.add(orderDetail);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderDetails ;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean isDelete = false;
        PreparedStatement statement = connection.prepareStatement("delete from order_detail where id = ?");
        statement.setInt(1,id);
        isDelete = statement.executeUpdate() > 0;
        return isDelete;
    }

    @Override
    public boolean edit(OrderDetail orderDetail) {
        boolean isEdit = false;
        try {
            PreparedStatement statement = connection.prepareStatement("update order_detail set product_id = ?, orders_id = ?, quantity = ? where id = ?");
            statement.setInt(1,orderDetail.getProduct_id());
            statement.setInt(2,orderDetail.getOrder_id());
            statement.setInt(3,orderDetail.getQuantity());
            statement.setInt(4,orderDetail.getId());
            isEdit = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isEdit;
    }

    @Override
    public List<OrderDetail> getByOffset(int offset, int limit, int isActive) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("select  * from order_detail limit = ? offset = ? where isActive = ?");
            statement.setInt(1,limit);
            statement.setInt(2,offset);
            statement.setInt(3,isActive);
            ResultSet rs =statement.executeQuery();
            while(rs.next()) {
                int id = rs.getInt("id");
                int product_id = rs.getInt("product_id");
                int orders_id = rs.getInt("orders_id");
                int quantity = rs.getInt("quantity");
                boolean checkActive;
                if(isActive == 1) {
                    checkActive = true;
                }else {
                    checkActive = false;
                }
                OrderDetail orderDetail = new OrderDetail(id,product_id,orders_id,quantity,checkActive);
                orderDetails.add(orderDetail);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orderDetails;
    }

    @Override
    public boolean active(int id) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("update order_detail set isActive = 1 where id = ?");
        statement.setInt(1,id);
        return statement.executeUpdate() > 0;
    }

    @Override
    public int sizeOfList(int isActive) {
        int count = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("select count(id) as number from order_detail where isActive = ?;");
            statement.setInt(1, isActive);
            ResultSet rs = statement.executeQuery();
            rs.next();
            count = rs.getInt("number");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
}
