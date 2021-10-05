package dao.brand;

import dao.IGeneralDAO;
import model.Brand;

public interface IBrandDao extends IGeneralDAO<Brand> {
    int sizeOfListIsActive();

    int sizeOfListNotActive();
}
