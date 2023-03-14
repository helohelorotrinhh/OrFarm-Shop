package ro.dev.data.dao;

import java.util.List;

import ro.dev.data.model.Category;

public interface CategoryDao {

    public void insert(Category category);

    public void update(Category category);

    public void delete(int id);

    public Category find(int id);

    public List<Category> findAll();
}
