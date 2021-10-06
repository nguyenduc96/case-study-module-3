package dao.user;

import model.User;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/Users_management";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Doimatkhau12";
    private static final String INSERT_USER_SQL = "INSERT INTO users" + "  (id, username, password, first_name, last_name, number_phone, email, address, sex, isActive, role, date_of_birth, created_at, note) VALUES " +
            " (?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
    private static final String SELECT_USER_BY_USERNAME = "select * from users where userName =?";
    private static final String SELECT_ALL_USER = "select * from users";
    private static final String DELETE_USER_SQL = "delete from users where userName= ?;";
    private static final String UPDATE_USER_SQL = "update users set  id = ?,username = ?,password= ?,first_name = ?,last_name = ?, number_phone = ?, email = ?, address = ?,sex = ?,isActive = ?,role = ?,date_of_birth = ?, created_at = ?, note = ? where userName = ?;";

    public UserDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void add(User user) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
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
            preparedStatement.setString(11, user.getRole());
            preparedStatement.setDate(12, Date.valueOf(user.getDate_of_birth()));
            preparedStatement.setDate(13, Date.valueOf(user.getCreated_at()));
            preparedStatement.setString(14, user.getNote());
            
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
            ;
        }
    }

    @Override
    public User select(int id) {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_USERNAME);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String userName = rs.getString("userName");
                String passWord = rs.getString("passWord");
                String first_name = rs.getString("first_name");
                String last_name = rs.getString("last_name");
                String number_phone = rs.getString("number_phone");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String sex = rs.getString("sex");
                boolean isActive = rs.getBoolean("isActive");
                String role = rs.getString("role");
                Date date_of_birth = rs.getDate("date_of_birth");
                Date created_at = rs.getDate("created_at");
                String note = rs.getString("note");
                user = new User(id, userName, passWord, first_name, last_name, number_phone, email, address, sex, isActive, role, date_of_birth, created_at, note);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }


    @Override
    public List<User> getAll() {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection();

             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER);) {
            System.out.println(preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();


            while (rs.next()) {
                int id = rs.getInt("id");
                String userName = rs.getString("username");
                String passWord = rs.getString("passWord");
                String first_name = rs.getString("first_name");
                String last_name = rs.getString("last_name");
                String number_phone = rs.getString("number_phone");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String sex = rs.getString("sex");
                boolean isActive = rs.getBoolean("isActive");
                String role = rs.getString("role");
                Date date_of_birth = rs.getDate("date_of_birth");
                Date created_at = rs.getDate("created_at");
                String note = rs.getString("note");
                users.add(new User(id, userName, passWord, first_name, last_name, number_phone, email, address, sex, isActive, role, date_of_birth, created_at, note));

            }
        } catch (SQLException e) {
            System.out.println(e);
            ;
        }
        return users;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_USER_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean edit(User user) {
        boolean rowEdit = false;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL);) {
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
            preparedStatement.setString(11, user.getRole());
            preparedStatement.setDate(12, Date.valueOf(user.getDate_of_birth()));
            preparedStatement.setDate(13, Date.valueOf(user.getCreated_at()));
            preparedStatement.setString(14, user.getNote());
            rowEdit = preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            System.out.println(e);
            ;
        }
        return rowEdit;
    }

    @Override
    public List<User> getByOffset(int limit, int offset) {
        return null;
    }
}

