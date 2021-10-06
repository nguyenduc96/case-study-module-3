package service.Role;

import dao.role.IRoleDAO;
import dao.role.RoleDAO;
import model.Role;

import java.sql.SQLException;
import java.util.List;

public class RoleService implements IRoleService{
    private IRoleDAO roleDAO = new RoleDAO();

    @Override
    public void add(Role role) throws SQLException {

    }

    @Override
    public Role select(int id) {
        return null;
    }

    @Override
    public List<Role> getAll() {
        return roleDAO.getAll();
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
    public List<Role> getByOffset(int limit, int offset) {
        return null;
    }
}
