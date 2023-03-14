
package ro.dev;

import ro.dev.data.dao.CategoryDao;
import ro.dev.data.dao.DatabaseDao;
import ro.dev.data.dao.ProductDao;
import ro.dev.data.model.Category;
import ro.dev.data.model.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

public class CategoryServlet extends BaseServlet {

   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = productDao.findByCategory(categoryId);
        
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("category.jsp").include(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

  
   
}
