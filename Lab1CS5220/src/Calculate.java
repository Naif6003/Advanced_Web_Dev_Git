

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Calculate")
public class Calculate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<Units> units = (List<Units>)getServletContext().getAttribute("listOfUnits");
		
		request.setAttribute("units", units);

		
		request.getRequestDispatcher("/WEB-INF/Calculate.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String unit1 = request.getParameter("unit1");
		String unit2 = request.getParameter("unit2");
		
		System.out.println(unit1 + unit2);
		double quantity2 = 0;
		
		
		
		if(unit1.equals("Meter") && unit2.equals("Foot")){
			quantity2 = quantity * 3.28084;
		}
		
		if(unit1.equals("Foot") && unit2.equals("Meter")){
			quantity2 = quantity * 0.305;
		}
		
		if(unit1.equals("Kilogram") && unit2.equals("Pound")){
			quantity2 = quantity * 2.20462;
		}
		
		if(unit1.equals("Pound") && unit2.equals("Kilogram")){
			quantity2 = quantity * 0.45359237;
		}
	
			
		System.out.println(quantity + " " + quantity2);
		
		
		request.getSession().setAttribute("q1", quantity);
		request.getSession().setAttribute("unit1", unit1);
		request.getSession().setAttribute("q2", quantity2);
		request.getSession().setAttribute("unit2", unit2);
		
		response.sendRedirect("results");
		
		
		
		
		
	}
	
}
