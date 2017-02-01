

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EditUnits")
public class EditUnits extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Units> units = (List<Units>)getServletContext().getAttribute("listOfUnits");
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		Units editThisUnit = units.get(id - 1);
		
		request.setAttribute("editThisUnit", editThisUnit);
		
		request.getRequestDispatcher("/WEB-INF/editUnit.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		int quantity = Integer.parseInt(request.getParameter("quantity1"));
		String unit1 = request.getParameter("unit1");
		double quantity2 = Double.parseDouble(request.getParameter("quantity2"));
		String unit2 = request.getParameter("unit2");
		
		
		List<Units> units = (List<Units>)getServletContext().getAttribute("listOfUnits");
		
		Units unitFromForm = new Units(id, quantity, unit1, quantity2, unit2);
		
		for(Units unitToEdit : units){
			if(unitToEdit.id == unitFromForm.id){
				
				unitToEdit.units = unitFromForm.units;
				unitToEdit.units2 = unitFromForm.units2;
				unitToEdit.quantity = unitFromForm.quantity;
				unitToEdit.quantity2 = unitFromForm.quantity2;
				
				response.sendRedirect("mainServlet");
				
			}
		}
		
		
		
		
		
		
		
	}

}
