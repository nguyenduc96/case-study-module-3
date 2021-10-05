package dao.product;

import config.DBConnection;
import model.Product;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProductDao {
    private Connection connection = DBConnection.getConnection();
    @Override
    public void add(Product product) throws SQLException {
        String query = "insert into product (name,code,image,quantity,price,discount,discount_pct,isActive,category_id,brand_id,description,created_at) values (?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1,product.getName());
        preparedStatement.setString(2,product.getCode());
        preparedStatement.setString(3,product.getImage());
        preparedStatement.setInt(4,product.getQuantity());
        preparedStatement.setDouble(5,product.getPrice());
        preparedStatement.setDouble(6,product.getDiscount());
        preparedStatement.setDouble(7,product.getDiscount_pct());
        preparedStatement.setBoolean(8,product.isActive());
        preparedStatement.setInt(9,product.getCategory_id());
        preparedStatement.setInt(10,product.getBrand_id());
        preparedStatement.setString(11,product.getDescription());
        preparedStatement.setDate(12, (Date) product.getCreated_at());
        preparedStatement.executeUpdate();
    }

    @Override
    public Product select(int id) {
        Product product =  null;
        try {
            String query = "select * from product where id = ?";
            PreparedStatement statement =  connection.prepareStatement(query);
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();
            rs.next();
            product = getProductInfor(id, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    private Product getProductInfor(int id, ResultSet rs) throws SQLException {
        String name = rs.getString("name");
        String code = rs.getString("code");
        String image = rs.getString("image");
        int quantity = rs.getInt("quantity");
        double price = rs.getDouble("price");
        double discount = rs.getDouble("discount");
        double discount_pct = rs.getDouble("discount_pct");
        boolean isActive;
        int isActiveInt = rs.getInt("isActive");
        if(isActiveInt == 1) isActive = true;
        else isActive = false;
        int category_id = rs.getInt("category_id");
        int brand_id = rs.getInt("brand_id");
        String description = rs.getString("description");
        Date create_at = rs.getDate("created_at");

        return  new Product(id,name,code,image,quantity,price,discount,discount_pct,isActive,category_id,brand_id,description,create_at);
    }

    @Override
    public List<Product> getAll() {
        List<Product> products = new ArrayList<>();
        try {
            String query = "select id,name,code,image,quantity,price,discount,discount_pct,isActive,category_id,brand_id,description,created_at from product";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs =  statement.executeQuery();
            while(rs.next()) {
                int id = rs.getInt("id");
                Product product = getProductInfor(id,rs);
                products.add(product);
            };

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean isDelete = false;
        String query = "update product set isActive = 0 where id = ? ";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1,id);
            isDelete = statement.executeUpdate() > 0;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return isDelete;
    }

    @Override
    public boolean edit(Product product) {
        boolean isUpdate = false;
        String query = "update product set name = ?,code = ?,image = ?,quantity = ?,price = ?,discount = ?,discount_pct = ?,category_id = ?,brand_id = ?,description = ?,created_at = ?, updated_at = ? where id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1,product.getName());
            statement.setString(2,product.getCode());
            statement.setString(3, product.getImage());
            statement.setInt(4,product.getQuantity());
            statement.setDouble(5,product.getPrice());
            statement.setDouble(6,product.getDiscount());
            statement.setDouble(7,product.getDiscount_pct());
            statement.setInt(8,product.getCategory_id());
            statement.setInt(9,product.getBrand_id());
            statement.setString(10, product.getDescription());
            statement.setDate(11, (Date) product.getCreated_at());
            statement.setDate(12, Date.valueOf(java.time.LocalDate.now()));
            statement.setInt(13,product.getId());
            isUpdate = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUpdate;
    }

    @Override
    public List<Product> getByOffset(int limit, int offset) {
        String query = "select * from product limit ? offset ?;";
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1,limit);
            statement.setInt(2,offset);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                int id = rs.getInt("id");
                Product product = getProductInfor(id,rs);
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public int sizeOfListIsActive() {
        int soluong = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("select count(id) as soluong from product where isActive = 1;");
            ResultSet rs = statement.executeQuery();
            rs.next();
            soluong = rs.getInt("soluong");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return soluong;
    }

    @Override
    public int sizeOfListNotActive() {
        int soluong = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("select count(id) as soluong from product where isActive = 0;");
            ResultSet rs = statement.executeQuery();
            rs.next();
            soluong = rs.getInt("soluong");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return soluong;
    }

    @Override
    public boolean active(int id) throws SQLException {
        return false;
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("select * from product where name like ?");
            statement.setString(1,  name );
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                int id = rs.getInt("id");
                products.add(getProductInfor(id,rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}
