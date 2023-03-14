package ro.dev.data.dao;

import java.util.List;

import ro.dev.data.model.User;

public interface UserDao {

    public void insert(User user);

    public void update(User user);

    public void delete(int id);

    public User find(int id);

    public User find(String email, String password);

    public List<User> findAll();
}
