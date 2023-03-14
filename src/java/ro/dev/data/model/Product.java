package ro.dev.data.model;

import ro.dev.data.dao.Database;

public class Product {

    public int id;
    public String name;
    public int quantity;
    public double price;
    public String image;
    public int categoryId;

    public Product(String name, int quantity, double price, String image, int categoryId) {
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.image = image;
        this.categoryId = categoryId;
    }

    public Product(int id, String name, int quantity, double price, String image, int categoryId) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.image = image;
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public Category getCategory(){
        return Database.getInstance().getCategoryDao().find(categoryId);
    }

}
