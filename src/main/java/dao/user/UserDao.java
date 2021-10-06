package dao.user;

import config.DBConnection;
import model.Brand;
import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static dao.brand.BrandDao.*;

public class UserDao implements IUserDao {
    private static final String INSERT_USER_SQL = "INSERT INTO user (username, password, first_name, last_name, number_phone, email, address, sex, isActive, role_id, date_of_birth, created_at) VALUES " +
            " (?,?,?,?,?,?,?,?,?,?,?,?);";
    private static final String SELECT_USER_BY_USERNAME = "select * from user where userName =?";
    private static final String SELECT_ALL_USER = "select * from user";
    private static final String UPDATE_BY_ACTIVE = "update user set isActive = ? where id = ?;";
    private static final String UPDATE_USER_SQL = "update users set  id = ?,username = ?,password= ?,first_name = ?,last_name = ?, number_phone = ?, email = ?, address = ?,sex = ?,isActive = ?,role = ?,date_of_birth = ?, created_at = ?, note = ? where userName = ?;";
    public static final String USERNAME = "username";
    public static final String PASSWORD = "password";
    public static final String FIRST_NAME = "first_name";
    public static final String LAST_NAME = "last_name";
    public static final String NUMBER_PHONE = "number_phone";
    public static final String EMAIL = "email";
    public static final String ADDRESS = "address";
    public static final String SEX = "sex";
    public static final String ROLE = "role_id";
    public static final String DATE_OF_BIRTH = "date_of_birth";
    public static final String CREATED_AT = "created_at";
    public static final String COUNT_ID_BY_ACTIVE = "select count(id) as quantity from user where isActive = ?";

    Connection connection = DBConnection.getConnection();

    @Override
    public void add(User user) throws SQLException {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getFirst_name());
            preparedStatement.setString(4, user.getLast_name());
            preparedStatement.setString(5, user.getNumber_phone());
            preparedStatement.setString(6, user.getEmail());
            preparedStatement.setString(7, user.getAddress());
            preparedStatement.setString(8, user.getSex());
            preparedStatement.setBoolean(9, user.isActive());
            preparedStatement.setInt(10, user.getRole_id());
            preparedStatement.setDate(11, user.getDate_of_birth());
            preparedStatement.setDate(12, user.getCreated_at());

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User select(int id) {
        User user = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_USERNAME);
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
               user = getUser(rs);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }


    @Override
    public List<User> getAll() {
        List<User> users = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                User user = getUser(rs);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return users;
    }

    private User getUser(ResultSet rs) throws SQLException {
        int id = rs.getInt(ID);
        String userName = rs.getString(USERNAME);
        String passWord = rs.getString(PASSWORD);
        String first_name = rs.getString(FIRST_NAME);
        String last_name = rs.getString(LAST_NAME);
        String number_phone = rs.getString(NUMBER_PHONE);
        String email = rs.getString(EMAIL);
        String address = rs.getString(ADDRESS);
        String sex = rs.getString(SEX);
        int intActive = rs.getInt(IS_ACTIVE);
        boolean isActive;
        if (intActive == 1) {
            isActive = true;
        } else {
            isActive = false;
        }
        int role = rs.getInt(ROLE);
        Date date_of_birth = rs.getDate(DATE_OF_BIRTH);
        Date created_at = rs.getDate(CREATED_AT);
        return new User(id, userName, passWord, first_name, last_name, number_phone, email, address, sex, isActive, role, date_of_birth, created_at);

    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean rowDeleted;
        PreparedStatement statement = connection.prepareStatement(UPDATE_BY_ACTIVE);
        statement.setBoolean(1, false);
        statement.setInt(2, id);
        rowDeleted = statement.executeUpdate() > 0;
        return rowDeleted;
    }

    @Override
    public boolean edit(User user) {
        boolean rowEdit = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL);
            preparedStatement.setInt(1, user.getId());
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getFirst_name());
            preparedStatement.setString(5, user.getLast_name());
            preparedStatement.setString(6, user.getNumber_phone());
            preparedStatement.setString(7, user.getEmail());
            preparedStatement.setString(8, user.getAddress());
            preparedStatement.setString(9, user.getSex());
            preparedStatement.setBoolean(10, user.isActive());
            preparedStatement.setInt(11, user.getRole_id());
            preparedStatement.setDate(12, user.getDate_of_birth());
            rowEdit = preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            System.out.println(e);
        }
        return rowEdit;
    }

    @Override
    public List<User> getByOffset(int offset, int limit, int isActive) {
        List<User> users = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_BRAND_LIMIT);
            statement.setInt(1, isActive);
            statement.setInt(2, limit);
            statement.setInt(3, offset);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                User user = getUser(resultSet);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;

    }

    @Override
    public boolean active(int id) throws SQLException {
        boolean isActive;
        PreparedStatement statement = connection.prepareStatement(UPDATE_BY_ACTIVE);
        statement.setBoolean(1, true);
        statement.setInt(2, id);
        isActive = statement.executeUpdate() > 0;
        return isActive;

    }

    @Override
    public int sizeOfList(int isActive) {
        int count = 0;
        try {
            PreparedStatement statement = connection.prepareStatement(COUNT_ID_BY_ACTIVE);
            statement.setInt(1, isActive);
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
    public int findIdByUser(User user) {
        int id = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("select id form user where username = ?, password = ?");
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getPassword());
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                id = resultSet.getInt(ID);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }
}

