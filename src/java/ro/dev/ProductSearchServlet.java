
package ro.dev;

import ro.dev.data.dao.DatabaseDao;
import ro.dev.data.dao.ProductDao;
import ro.dev.data.model.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;


public class ProductSearchServlet extends BaseServlet {

    
    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String search = request.getParameter("search");
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = productDao.findAll();
        
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("product-search.jsp").include(request, response);
    }

    
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
}
