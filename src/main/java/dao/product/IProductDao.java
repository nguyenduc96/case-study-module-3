package dao.product;

import dao.IGeneralDAO;
import model.Product;

import java.util.List;

public interface IProductDao extends IGeneralDAO<Product> {
    List<Product> findByName(String name);

    int sizeOfListIsActive();

    int sizeOfListNotActive();
}
