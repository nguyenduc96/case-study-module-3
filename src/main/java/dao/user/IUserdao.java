package dao.user;

import dao.IGeneralDAO;
import model.User;

interface IUserDao extends IGeneralDAO<User> {
    User findUser(String username, String password);
}
