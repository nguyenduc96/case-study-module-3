package dao.category;

import config.DBConnection;
import model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao implements ICategoryDao {
    public static final String INSERT_CATEGORY = "insert into category (id, name, image, isActive) values (?,?,?,?)";
    public static final String SELECT_CATEGORY_BY_ID = "select  * from category where id = ?";
    public static final String SELECT_ALL = "select  * from  category";
    public static final String DELETE_BY_ID = "update  category set isActive = ?, where id = ?";
    public static final String UPDATE_CATEGORY = "update category set name = ?, image = ? where  id = ?";
    private Connection connection = DBConnection.getConnection();

    @Override
    public void add(Category category) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(INSERT_CATEGORY);
        statement.setInt(1, category.getId());
        statement.setString(2, category.getName());
        statement.setString(3, category.getImage());
        statement.setBoolean(4, category.isActive());
        statement.executeQuery();
    }

    @Override
    public Category select(int id) {
        Category category = null;
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_CATEGORY_BY_ID);
            statement.setInt(1, id);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String image = resultSet.getString("image");
                boolean isActive;
                int isActiveInt = resultSet.getInt("isActive");
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
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String image = resultSet.getString("image");
                boolean isActive;
                int isActiveInt = resultSet.getInt("isActive");
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
        PreparedStatement statement = connection.prepareStatement(DELETE_BY_ID);
        statement.setBoolean(1, false);
        statement.setInt(1, id);
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
            PreparedStatement statement = connection.prepareStatement("select * from category limit ? offset ?");
            statement.setInt(1, limit);
            statement.setInt(2, offset);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String image = resultSet.getString("image");
                boolean isActive;
                int isActiveInt = resultSet.getInt("isActive");
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
}
