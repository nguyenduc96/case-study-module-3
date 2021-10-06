package service.user;

import dao.IGeneralDAO;
import model.User;

public interface IUserService extends IGeneralDAO<User> {
    User findUser(String username, String password);
}
