package ro.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ro.dev.data.dao.ProductDao;
import ro.dev.data.driver.MySQLDriver;
import ro.dev.data.model.Product;

public class ProductDaoImpl implements ProductDao {

    @Override
    public void insert(Product product) {
        // TODO Auto-generated method stub
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "INSERT INTO PRODUCTS(id, name, quantity, price, image, category_id) VALUES(NULL, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.name);
            stmt.setInt(2, product.quantity);
            stmt.setDouble(3, product.price);
            stmt.setString(4, product.image);
            stmt.setInt(5, product.categoryId);

            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }

    @Override
    public void update(Product product) {
        // TODO Auto-generated method stub
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE PRODUCTS SET name=?, quantity=?, price=?, image=?, category_id=? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.name);
            stmt.setInt(2, product.quantity);
            stmt.setDouble(3, product.price);
            stmt.setString(4, product.image);
            stmt.setInt(5, product.categoryId);

            stmt.setInt(6, product.id);
            stmt.execute();

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

    }

    @Override
    public void delete(int id) {
        // TODO Auto-generated method stub
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "DELETE FROM PRODUCTS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }

    @Override
    public Product find(int id) {
        // TODO Auto-generated method stub
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                String img = rs.getString("image");
                int categoryId = rs.getInt("category_id");
                return new Product(id, name, quantity, price, img, categoryId);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    @Override
    public List<Product> findAll() {
        // TODO Auto-generated method stub
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int quanlity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                String img = rs.getString("image");
                int categoryId = rs.getInt("category_id");

                productList.add(new Product(id, name, quanlity, price, img, categoryId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return productList;

    }

    @Override
    public List<Product> findByCategory(int categoryId) {
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE CATEGORY_ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, categoryId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int quanlity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                String img = rs.getString("image");

                productList.add(new Product(id, name, quanlity, price, img, categoryId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return productList;
    }
@Override
    public List<Product> findByName(String key) {
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE NAME LIKE ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + key + "%");

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int quanlity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                String img = rs.getString("image");
                int categoryId = rs.getInt("category_id");

                productList.add(new Product(id, name, quanlity, price, img, categoryId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return productList;
    }
}
