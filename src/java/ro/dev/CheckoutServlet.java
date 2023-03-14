
package ro.dev;

import ro.dev.util.StringHelper;
import ro.dev.data.dao.DatabaseDao;
import ro.dev.data.dao.OrderDao;
import ro.dev.data.dao.OrderDetailDao;
import ro.dev.data.model.Order;
import ro.dev.data.model.OrderDetail;
import ro.dev.data.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import ro.dev.data.model.OrderDetailSession;


public class CheckoutServlet extends BaseServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("LoginServlet");
        } else {
            OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
            String code = StringHelper.randomString(9);
            Order order = new Order(code, "pending", user.getId());
            orderDao.insert(order);
            order = orderDao.find(code);

            OrderDetailDao orderDetailDao = DatabaseDao.getInstance().getOrderDetailDao();

            List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");
            if (cart != null) {
                for (OrderDetailSession ods : cart) {
                    OrderDetail orderDetail = new OrderDetail(ods.getProductId(), order.getId(), ods.getQuantity(), ods.getProductPrice());
                    orderDetailDao.insert(orderDetail);
                }
            }

            session.removeAttribute("cart");
            response.sendRedirect("CartServlet");
        }

    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
}
