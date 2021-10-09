package dao.role;

import config.DBConnection;
import model.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoleDAO implements IRoleDAO {
    public static final String SELECT_ALL_ROLE = "select * from role";
    public static final String SELECT_ROLE_BY_ID = "select * from role where id = ?";
    public static final String INSERT_INTO_ROLE = "insert into role (name) value (?)";
    private Connection connection = DBConnection.getConnection();

    @Override
    public void add(Role role) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(INSERT_INTO_ROLE);
    }

    @Override
    public Role select(int id) {
        Role role = null;
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ROLE_BY_ID);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                role = new Role(id, name, true);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return role;
    }

    @Override
    public List<Role> getAll() {
        List<Role> roles = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_ROLE);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String note = resultSet.getString("note");
                Role role = new Role(id, name, true, note);
                roles.add(role);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roles;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean edit(Role role) {
        return false;
    }

    @Override
    public List<Role> getByOffset(int offset, int limit, int isActive) {
        return null;
    }

    @Override
    public boolean active(int id) throws SQLException {
        return false;
    }

    @Override
    public int sizeOfList(int isActive) {
        return 0;
    }
}
