package dao.category;

import config.DBConnection;
import model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static dao.brand.BrandDao.*;

public class CategoryDao implements ICategoryDao {
    public static final String INSERT_CATEGORY = "insert into category (name, image, isActive) values (?,?,?)";
    public static final String SELECT_CATEGORY_BY_ID = "select  * from category where id = ?";
    public static final String SELECT_ALL = "select  * from  category";
    public static final String UPDATE_ACTIVE = "update  category set isActive = ? where id = ?";
    public static final String UPDATE_CATEGORY = "update category set name = ?, image = ? where  id = ?";
    public static final String COUNT_ID = "select count(id) as quantity from category";
    public static final String SELECT_OFSET = "select * from category limit ? offset ?";
    private Connection connection = DBConnection.getConnection();

    @Override
    public void add(Category category) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(INSERT_CATEGORY);
        statement.setString(1, category.getName());
        statement.setString(2, category.getImage());
        statement.setBoolean(3, category.isActive());
        statement.executeUpdate();
    }

    @Override
    public Category select(int id) {
        Category category = null;
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_CATEGORY_BY_ID);
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
                category = new Category(id, name, image, isActive);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return category;
    }

    @Override
    public List<Category> getAll() {
        List<Category> categories = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(ID);
                String name = resultSet.getString(NAME);
                String image = resultSet.getString(IMAGE);
                boolean isActive;
                int isActiveInt = resultSet.getInt(IS_ACTIVE);
                if (isActiveInt == 1) {
                    isActive = true;
                } else {
                    isActive = false;
                }
                categories.add(new Category(id, name, image, isActive));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean isDelete;
        PreparedStatement statement = connection.prepareStatement(UPDATE_ACTIVE);
        statement.setBoolean(1, false);
        statement.setInt(2, id);
        isDelete = statement.executeUpdate() > 0;
        return isDelete;
    }

    @Override
    public boolean edit(Category category) {
        boolean isUpdate = false;
        try {
            PreparedStatement statement = connection.prepareStatement(UPDATE_CATEGORY);
            statement.setString(1, category.getName());
            statement.setString(2, category.getImage());
            statement.setInt(3, category.getId());
            isUpdate = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUpdate;
    }

    @Override
    public List<Category> getByOffset(int offset, int limit) {
        List<Category> categories = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_OFSET);
            statement.setInt(1, limit);
            statement.setInt(2, offset);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt(ID);
                String name = resultSet.getString(NAME);
                String image = resultSet.getString(IMAGE);
                boolean isActive;
                int isActiveInt = resultSet.getInt(IS_ACTIVE);
                if (isActiveInt == 1) {
                    isActive = true;
                } else {
                    isActive = false;
                }
                categories.add(new Category(id, name, image, isActive));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
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

    @Override
    public boolean active(int id) throws SQLException {
        boolean isActive;
        PreparedStatement statement = connection.prepareStatement(UPDATE_ACTIVE);
        statement.setBoolean(1, true);
        statement.setInt(2, id);
        isActive = statement.executeUpdate() > 0;
        return isActive;
    }
}
