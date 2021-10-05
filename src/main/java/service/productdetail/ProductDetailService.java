package service.productdetail;

import dao.productdetail.ProductDetailDao;
import model.ProductDetail;

import java.sql.SQLException;
import java.util.List;

public class ProductDetailService implements IProductDetailService {
    private ProductDetailDao productDetailDao = new ProductDetailDao();
    @Override
    public void add(ProductDetail productDetail) throws SQLException {
        productDetailDao.add(productDetail);
    }

    @Override
    public ProductDetail select(int product_id) {
        return productDetailDao.select(product_id);
    }

    @Override
    public List<ProductDetail> getAll() {
        return null;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return productDetailDao.delete(id);
    }

    @Override
    public boolean edit(ProductDetail productDetail) {
        return productDetailDao.edit(productDetail);
    }

    @Override
    public List<ProductDetail> getByOffset(int offset, int limit, int isActive) {
        return null;
    }

    @Override
    public int sizeOfList(int isActive) {
        return 0;
    }

    @Override
    public boolean active(int id) throws SQLException {
        return false;
    }

}
