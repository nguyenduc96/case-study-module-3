package service.product;

import dao.product.IProductDao;
import dao.product.ProductDao;
import model.Product;

import java.sql.SQLException;
import java.util.List;

public class ProductService implements IProductService {
    private static IProductDao productDao = new ProductDao();

    @Override
    public void add(Product product) throws SQLException {
        productDao.add(product);
    }

    @Override
    public Product select(int id) {
        return productDao.select(id);
    }

    @Override
    public List<Product> getAll() {

        return productDao.getAll();
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return productDao.delete(id);
    }

    @Override
    public boolean edit(Product product) {
        return productDao.edit(product);
    }

    @Override
    public List<Product> getByOffset(int limit, int offset) {
        return productDao.getByOffset(limit,offset);
    }

    @Override
    public int sizeOfListIsActive() {
        return productDao.sizeOfListIsActive();
    }

    @Override
    public int sizeOfListNotActive() {
        return 0;
    }

    @Override
    public boolean active(int id) throws SQLException {
        return false;
    }

    @Override
    public List<Product> findByName(String name) {
        name = "%" + name + "%";
        return productDao.findByName(name);
    }
}
