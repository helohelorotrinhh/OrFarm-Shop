package ro.dev.data.dao;

import java.util.List;

import ro.dev.data.model.Product;

public interface ProductDao {
	public void insert(Product product);
	public void update(Product product);
	public void delete(int id);
	public Product find(int id);
	public List<Product> findAll();
	public List<Product> findByName(String name);
	public List<Product> findByCategory(int categoryId);
}
