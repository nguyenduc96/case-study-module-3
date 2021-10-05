package dao.category;

import dao.IGeneralDAO;
import model.Category;

public interface ICategoryDao extends IGeneralDAO<Category> {
    int sizeOfListIsActive();

    int sizeOfListNotActive();
}
