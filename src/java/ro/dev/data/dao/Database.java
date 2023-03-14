package ro.dev.data.dao;

import java.util.List;
import ro.dev.data.impl.CategoryDaoImpl;
import ro.dev.data.impl.OrderDaoImpl;
import ro.dev.data.impl.OrderDetailDaoImpl;
import ro.dev.data.impl.ProductDaoImpl;
import ro.dev.data.impl.UserDaoImpl;
import ro.dev.data.model.OrderDetail;

public class Database extends DatabaseDao {

    @Override
    public UserDao getUserDao() {
        // TODO Auto-generated method stub
        return new UserDaoImpl();
    }

    @Override
    public ProductDao getProductDao() {
        // TODO Auto-generated method stub
        return new ProductDaoImpl();
    }

    @Override
    public CategoryDao getCategoryDao() {
        // TODO Auto-generated method stub
        return new CategoryDaoImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        // TODO Auto-generated method stub
        return new OrderDaoImpl();
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        // TODO Auto-generated method stub
        return new OrderDetailDaoImpl();
    }

}
