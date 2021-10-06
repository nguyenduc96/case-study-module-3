package dao.user;

import dao.IGeneralDAO;
import model.User;

public interface IUserDao extends IGeneralDAO<User> {
    User findUser(String username, String password);
}
