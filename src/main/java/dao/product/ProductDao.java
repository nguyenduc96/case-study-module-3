package dao.product;

import config.DBConnection;
import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static dao.brand.BrandDao.*;

public class ProductDao implements IProductDao {
    public static final String SELECT_BY_LIMIT = "select * from product where isActive = ? limit ? offset ? ;";
    public static final String SEARCH_BY_NAME = "select * from product where name like ?";
    public static final String Q_UP_DATE = "update product set name = ?,code = ?,image = ?,quantity = ?,price = ?,discount = ?,discount_pct = ?,category_id = ?,brand_id = ?,description = ?,created_at = ?, updated_at = ? where id = ?";
    public static final String SELECT_BY_ID = "select * from product where id = ?";
    public static final String INSERT_PRODUCT = "insert into product (name,code,image,quantity,price,discount,discount_pct,isActive,category_id,brand_id,description,created_at) values (?,?,?,?,?,?,?,?,?,?,?,?)";
    public static final String CODE = "code";
    public static final String PRICE = "price";
    public static final String DISCOUNT = "discount";
    public static final String DISCOUNT_PCT = "discount_pct";
    public static final String CATEGORY_ID = "category_id";
    public static final String BRAND_ID = "brand_id";
    public static final String DESCRIPTION = "description";
    public static final String CREATED_AT = "created_at";
    public static final String SELECT_ALL = "select * from product";
    public static final String UPDATE_ACTIVE = "update product set isActive = ? where id = ?;";
    private Connection connection = DBConnection.getConnection();

    @Override
    public void add(Product product) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT);
        preparedStatement.setString(1, product.getName());
        preparedStatement.setString(2, product.getCode());
        preparedStatement.setString(3, product.getImage());
        preparedStatement.setInt(4, product.getQuantity());
        preparedStatement.setDouble(5, product.getPrice());
        preparedStatement.setDouble(6, product.getDiscount());
        preparedStatement.setDouble(7, product.getDiscount_pct());
        preparedStatement.setBoolean(8, product.isActive());
        preparedStatement.setInt(9, product.getCategory_id());
        preparedStatement.setInt(10, product.getBrand_id());
        preparedStatement.setString(11, product.getDescription());
        preparedStatement.setDate(12, (Date) product.getCreated_at());
        preparedStatement.executeUpdate();
    }

    @Override
    public Product select(int id) {
        Product product = null;
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_BY_ID);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            rs.next();
            product = getProductInfor(id, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    private Product getProductInfor(int id, ResultSet rs) throws SQLException {
        String name = rs.getString(NAME);
        String code = rs.getString(CODE);
        String image = rs.getString(IMAGE);
        int quantity = rs.getInt(QUANTITY);
        double price = rs.getDouble(PRICE);
        double discount = rs.getDouble(DISCOUNT);
        double discount_pct = rs.getDouble(DISCOUNT_PCT);
        boolean isActive;
        int isActiveInt = rs.getInt(IS_ACTIVE);
        if (isActiveInt == 1) {
            isActive = true;
        } else {
            isActive = false;
        }
        int category_id = rs.getInt(CATEGORY_ID);
        int brand_id = rs.getInt(BRAND_ID);
        String description = rs.getString(DESCRIPTION);
        Date create_at = rs.getDate(CREATED_AT);
        return new Product(id, name, code, image, quantity, price, discount, discount_pct, isActive, category_id, brand_id, description, create_at);
    }

    @Override
    public List<Product> getAll() {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(ID);
                Product product = getProductInfor(id, rs);
                products.add(product);
            }
            ;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean isDelete = false;
        try {
            PreparedStatement statement = connection.prepareStatement(UPDATE_ACTIVE);
            statement.setBoolean(1, false);
            statement.setInt(2, id);
            isDelete = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isDelete;
    }

    @Override
    public boolean edit(Product product) {
        boolean isUpdate = false;
        try {
            PreparedStatement statement = connection.prepareStatement(Q_UP_DATE);
            statement.setString(1, product.getName());
            statement.setString(2, product.getCode());
            statement.setString(3, product.getImage());
            statement.setInt(4, product.getQuantity());
            statement.setDouble(5, product.getPrice());
            statement.setDouble(6, product.getDiscount());
            statement.setDouble(7, product.getDiscount_pct());
            statement.setInt(8, product.getCategory_id());
            statement.setInt(9, product.getBrand_id());
            statement.setString(10, product.getDescription());
            statement.setDate(11, (Date) product.getCreated_at());
            statement.setDate(12, Date.valueOf(java.time.LocalDate.now()));
            statement.setInt(13, product.getId());
            isUpdate = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUpdate;
    }

    @Override
    public List<Product> getByOffset(int offset, int limit, int isActive) {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_BY_LIMIT);
            statement.setInt(1, isActive);
            statement.setInt(2, limit);
            statement.setInt(3, offset);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(ID);
                Product product = getProductInfor(id, rs);
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }


    @Override
    public boolean active(int id) throws SQLException {
        boolean isActive;
        PreparedStatement statement = connection.prepareStatement(UPDATE_ACTIVE);
        statement.setBoolean(1, true);
        statement.setInt(2, id);
        isActive = statement.executeUpdate() > 0;
        return isActive;
    }

    @Override
    public int sizeOfList(int isActive) {
        int count = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("select count(id) as quantity from product where isActive = ?;");
            statement.setInt(1, isActive);
            ResultSet rs = statement.executeQuery();
            rs.next();
            count = rs.getInt(QUANTITY);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SEARCH_BY_NAME);
            statement.setString(1, name);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                products.add(getProductInfor(id, rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}
