package ro.dev.data.dao;

import java.util.List;

import ro.dev.data.model.OrderDetail;

public interface OrderDetailDao {

    public void insert(OrderDetail orderDetail);

    public void update(OrderDetail orderDetail);

    public void delete(int id);

    public OrderDetail find(int id);

    public List<OrderDetail> findAll();

    public List<OrderDetail> findByOrder(int orderId);
}
