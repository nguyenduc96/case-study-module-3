package dao.brand;

import config.DBConnection;
import model.Brand;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BrandDao implements IBrandDao {
    public static final String SELECT_ALL_BRAND = "select * from brand";
    public static final String SELECT_BRAND_BY_ID = "select  * from brand where id = ?";
    public static final String INSERT_NEW_BRAND = "insert into brand (name, image, isActive) values (?,?,?)";
    public static final String DELETE_BY_ID = "update brand set isActive = ? where id = ?";
    public static final String UPDATE_BRAND_INFO = "update brand set name = ?, image = ? where id = ?";
    public static final String SELECT_BRAND_LIMIT = "select * from brand limit ? offset ?";
    public static final String ID = "id";
    public static final String NAME = "name";
    public static final String IMAGE = "image";
    public static final String IS_ACTIVE = "isActive";
    public static final String COUNT_ID = "select count(id) as quantity from brand";
    public static final String QUANTITY = "quantity";
    private Connection connection = DBConnection.getConnection();

    @Override
    public void add(Brand brand) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(INSERT_NEW_BRAND);
        statement.setString(1, brand.getName());
        statement.setString(2, brand.getImage());
        statement.setBoolean(3, brand.isActive());
        statement.executeUpdate();
    }

    @Override
    public Brand select(int id) {
        Brand brand = null;
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_BRAND_BY_ID);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString(NAME);
                String image = resultSet.getString(IMAGE);
                boolean isActive;
                int isActiveInt = resultSet.getInt(IS_ACTIVE);
                if (isActiveInt == 1) {
                    isActive = true;
                } else {
                    isActive = false;
                }
                brand = new Brand(id, name, image, isActive);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return brand;
    }

    @Override
    public List<Brand> getAll() {
        List<Brand> brands = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_BRAND);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id =  resultSet.getInt(ID);
                String name = resultSet.getString(NAME);
                String image = resultSet.getString(IMAGE);
                boolean isActive;
                int isActiveInt = resultSet.getInt(IS_ACTIVE);
                if (isActiveInt == 1) {
                    isActive = true;
                } else {
                    isActive = false;
                }
                brands.add(new Brand(id, name, image, isActive));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return brands;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean isDelete;
        PreparedStatement statement = connection.prepareStatement(DELETE_BY_ID);
        statement.setBoolean(1, false);
        statement.setInt(2, id);
        isDelete = statement.executeUpdate() > 0;
        return isDelete;
    }

    @Override
    public boolean edit(Brand brand) {
        boolean isUpdate = false;
        try {
            PreparedStatement statement = connection.prepareStatement(UPDATE_BRAND_INFO);
            statement.setString(1, brand.getName());
            statement.setString(2, brand.getImage());
            statement.setInt(3, brand.getId());
            isUpdate = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUpdate;
    }

    @Override
    public List<Brand> getByOffset(int offset, int limit) {
        List<Brand> brands = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_BRAND_LIMIT);
            statement.setInt(1, limit);
            statement.setInt(2, offset);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id =  resultSet.getInt(ID);
                String name = resultSet.getString(NAME);
                String image = resultSet.getString(IMAGE);
                boolean isActive;
                int isActiveInt = resultSet.getInt(IS_ACTIVE);
                if (isActiveInt == 1) {
                    isActive = true;
                } else {
                    isActive = false;
                }
                brands.add(new Brand(id, name, image, isActive));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return brands;
    }

    @Override
    public int sizeOfList() {
        int count = 0;
        try {
            PreparedStatement statement = connection.prepareStatement(COUNT_ID);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                count = resultSet.getInt(QUANTITY);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
}
