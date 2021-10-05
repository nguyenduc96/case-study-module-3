package dao.product;

import dao.IGeneralDAO;
import model.Product;

import java.util.List;

public interface IProductDao extends IGeneralDAO<Product> {
    public List<Product> findByName(String name);
}
