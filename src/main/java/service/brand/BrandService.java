package service.brand;

import dao.brand.BrandDao;
import model.Brand;

import java.sql.SQLException;
import java.util.List;

public class BrandService implements IBrandService{
    private BrandDao brandDao = new BrandDao();

    @Override
    public void add(Brand brand) throws SQLException {
        brandDao.add(brand);
    }

    @Override
    public Brand select(int id) {
        return brandDao.select(id);
    }

    @Override
    public List<Brand> getAll() {
        return brandDao.getAll();
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return brandDao.delete(id);
    }

    @Override
    public boolean edit(Brand brand) {
        return brandDao.edit(brand);
    }

    @Override
    public List<Brand> getByOffset(int offset, int limit, int isActive) {
        return brandDao.getByOffset(offset, limit, isActive);
    }

    @Override
    public int sizeOfList(int isActive) {
        return brandDao.sizeOfList(isActive);
    }

    @Override
    public boolean active(int id) throws SQLException {
        return brandDao.active(id);
    }
}
