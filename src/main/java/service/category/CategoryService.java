package service.category;

import dao.category.CategoryDao;
import model.Category;

import java.sql.SQLException;
import java.util.List;

public class CategoryService implements ICategoryService {
    private CategoryDao categoryDao = new CategoryDao();

    @Override
    public void add(Category category) throws SQLException {
        categoryDao.add(category);
    }

    @Override
    public Category select(int id) {
        return categoryDao.select(id);
    }

    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return categoryDao.delete(id);
    }

    @Override
    public boolean edit(Category category) {
        return categoryDao.edit(category);
    }

    @Override
    public List<Category> getByOffset(int offset, int limit) {
        return categoryDao.getByOffset(offset, limit);
    }
}
