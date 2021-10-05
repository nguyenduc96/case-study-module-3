package service.product;

import dao.product.IProductDao;
import dao.product.ProductDao;
import model.Product;

import java.sql.SQLException;
import java.util.List;

public class ProductService implements IProductService {
    private static ProductDao productDao = new ProductDao();

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
    public List<Product> getByOffset(int limit, int offset, int isActive) {
        return productDao.getByOffset(limit,offset,isActive);
    }

    @Override
    public int countRecord() {
        return productDao.countRecord();
    }

    @Override
    public void active(int id) throws SQLException {
        productDao.active(id);
    }

    public int countRecord(int isActive) {
        return productDao.countRecord(isActive);
    }

    @Override
    public List<Product> findByName(String name) {
        name = "%" + name + "%";
        return productDao.findByName(name);
    }
}
