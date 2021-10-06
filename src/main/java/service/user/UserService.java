package service.user;

import dao.user.UserDao;
import model.User;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService{
    private UserDao userDAO = new UserDao();

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
    public List<User> getByOffset(int offset, int limit, int isActive) {
        return userDAO.getByOffset(offset, limit, isActive);
    }

    @Override
    public boolean active(int id) throws SQLException {
        return userDAO.active(id);
    }

    @Override
    public int sizeOfList(int isActive) {
        return userDAO.sizeOfList(isActive);
    }

    @Override
    public User findUser(String username, String password) {
        return userDAO.findUser(username, password);
    }
}
