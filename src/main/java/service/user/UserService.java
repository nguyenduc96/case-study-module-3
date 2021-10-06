package service.user;

import dao.user.UserDAO;
import model.User;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService{
    private UserDAO userDAO = new UserDAO();

    @Override
    public void add(User user) throws SQLException {
         userDAO.add(user);
    }

    @Override
    public User select(int id) {
        return userDAO.select(id);
    }

    @Override
    public List<User> getAll() {
        return userDAO.getAll();
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return userDAO.delete(id);
    }

    @Override
    public boolean edit(User user) {
        return userDAO.edit(user);
    }

    @Override
    public List<User> getByOffset(int limit, int offset) {
        return null;
    }
}
