package dao.productdetail;

import config.DBConnection;
import model.ProductDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ProductDetailDao implements IProductDetailDao{
    private Connection connection = DBConnection.getConnection();
    @Override
    public void add(ProductDetail productDetail) throws SQLException {
        String query = "insert into product_detail " +
                "(product_id,isActive,image,screen_tech,screen_resolution,front_camera_tech,rear_camera_teach,operator_system,cpu,ram,memory,connect,pin,charge) values" +
                "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1,productDetail.getProduct_id());
        statement.setBoolean(2,productDetail.isActive());
        statement.setString(3,productDetail.getImage());
        statement.setString(4,productDetail.getScreen_tech());
        statement.setString(5,productDetail.getScreen_resolution());
        statement.setString(6,productDetail.getFront_camera_tech());
        statement.setString(7,productDetail.getRear_camera_teach());
        statement.setString(8,productDetail.getOperator_system());
        statement.setString(9,productDetail.getCpu());
        statement.setString(10,productDetail.getRam());
        statement.setString(11,productDetail.getMemory());
        statement.setString(12,productDetail.getConnect());
        statement.setString(13,productDetail.getPin());
        statement.setString(14,productDetail.getCharge());
        statement.executeUpdate();

    }

    @Override
    public ProductDetail select(int product_id) {
        ProductDetail productDetail = null;
        try {
            String query = "select * form product_detail where product_id =?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1,product_id);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                int id = rs.getInt("id");
                boolean isActive = rs.getBoolean("isActive");
                String image = rs.getString("image");
                String screen_tech = rs.getString("screen_tech");
                String screen_resolution = rs.getString("screen_resolution");
                String front_camera_tech = rs.getString("front_camera_tech");
                String rear_camera_teach = rs.getString("rear_camera_teach");
                String operator_system = rs.getString("operator_systemString");
                String cpu = rs.getString("cpu");
                String ram = rs.getString("ram");
                String memory = rs.getString("memory");
                String connect = rs.getString("connect");
                String pin = rs.getString("pin");
                String charge = rs.getString("charge");
                String note = rs.getString("note");
                productDetail = new ProductDetail(id,product_id,isActive,image,screen_tech,screen_resolution,front_camera_tech,rear_camera_teach,operator_system,cpu,ram,memory,connect,pin,charge,note);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  productDetail;
    }

    @Override
    public List<ProductDetail> getAll() {
        return null;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("update product_detail set isActive = 0 where id = ?");
        statement.setInt(1,id);
        return statement.executeUpdate() > 0;
    }

    @Override
    public boolean edit(ProductDetail productDetail) {
        String query = "update product_detail set image = ?,screen_tech = ?,screen_resolution = ?,front_camera_tech = ?,rear_camera_teach = ?,operator_system = ?,cpu = ?,ram = ?,memory = ?,connect = ?,pin = ?,charge = ? where id ?";
        boolean isUpdate = false;
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1,productDetail.getImage());
            statement.setString(2,productDetail.getScreen_tech());
            statement.setString(3,productDetail.getScreen_resolution());
            statement.setString(4,productDetail.getFront_camera_tech());
            statement.setString(5,productDetail.getRear_camera_teach());
            statement.setString(6,productDetail.getOperator_system());
            statement.setString(7,productDetail.getCpu());
            statement.setString(8,productDetail.getRam());
            statement.setString(9,productDetail.getMemory());
            statement.setString(10,productDetail.getConnect());
            statement.setString(11,productDetail.getPin());
            statement.setString(12,productDetail.getCharge());
            statement.setInt(13,productDetail.getId());
            isUpdate = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUpdate;
    }

    @Override
    public List<ProductDetail> getByOffset(int limit, int offset) {
        return null;
    }

    @Override
    public int sizeOfListIsActive() {
        return 0;
    }

    @Override
    public int sizeOfListNotActive() {
        return 0;
    }

    @Override
    public boolean active(int id) throws SQLException {
        return false;
    }
}
