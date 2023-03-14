package ro.dev.data.dao;

public abstract class DatabaseDao {

    private static DatabaseDao instance;

    public static void init(DatabaseDao _instance) {
        instance = _instance;
    }

    public static DatabaseDao getInstance() {
        return instance;
    }

    public abstract UserDao getUserDao();

    public abstract ProductDao getProductDao();

    public abstract CategoryDao getCategoryDao();

    public abstract OrderDao getOrderDao();

    public abstract OrderDetailDao getOrderDetailDao();
}
