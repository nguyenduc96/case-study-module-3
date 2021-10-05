package service.product;

import model.Product;
import service.IGeneralService;

import java.util.List;

public interface IProductService extends IGeneralService<Product> {
    public List<Product> findByName(String name);

    int sizeOfListIsActive();

    int sizeOfListNotActive();
}
