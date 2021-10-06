package service.product;

import dao.brand.BrandDao;
import dao.category.CategoryDao;
import dao.product.IProductDao;
import dao.product.ProductDao;
import model.Brand;
import model.Category;
import model.Product;

import java.sql.SQLException;
import java.util.List;

public class ProductService implements IProductService {
    private static ProductDao productDao = new ProductDao();
    private static CategoryDao categoryDao = new CategoryDao();
    private static BrandDao brandDao = new BrandDao();

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
    public List<Product> getByOffset(int offset, int limit, int isActive) {
        List<Product> products = productDao.getByOffset(offset, limit, isActive);
        for(Product product : products) {
            Category category = categoryDao.select(product.getCategory_id());
            Brand brand = brandDao.select(product.getBrand_id());
            product.setCategory(category);
            product.setBrand(brand);
        }
        return products;
    }

    @Override
    public int sizeOfList(int isActive) {
        return productDao.sizeOfList(isActive);
    }


    @Override
    public boolean active(int id) throws SQLException {
        return productDao.active(id);
    }

    @Override
    public List<Product> findByName(String name) {
        name = "%" + name + "%";
        return productDao.findByName(name);
    }
}
