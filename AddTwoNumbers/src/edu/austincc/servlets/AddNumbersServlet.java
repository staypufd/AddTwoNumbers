package edu.austincc.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InputNumbersServlet
 */
@WebServlet({ "/AddNumbersServlet", "/addNumbers" })
public class AddNumbersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddNumbersServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "/Results.jsp";

		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");

		try {
			double num1 = new Double(number1String).floatValue();
			double num2 = new Double(number2String).floatValue();
			double sumNum = num1 + num2;
			
			request.setAttribute("result", sumNum);
		} catch (NumberFormatException nfe) {
			request.setAttribute("error",
					"One of your inputs was not a valid Double. Please try again");
			url = "/InputNumbers.jsp";
		}

		getServletContext().getRequestDispatcher(url)
				.forward(request, response);
	}

}
