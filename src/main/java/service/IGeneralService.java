package service;

import java.sql.SQLException;
import java.util.List;

public interface IGeneralService<T> {
    void add(T t) throws SQLException;

    T select (int id);

    List<T> getAll();

    boolean delete(int id) throws SQLException;

    boolean edit(T t);

    List<T> getByOffset(int limit,int offset,int isActive);

    int countRecord();

    public void active(int id) throws SQLException;
}
