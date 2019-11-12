package com.cslg.triangle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class triangleServlet
 */

public class triangleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public triangleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		double length1;
		double length2;
		double length3;
		
		try {
			length1 = Double.parseDouble(request.getParameter("length1"));
			length2 = Double.parseDouble(request.getParameter("length2"));
			length3 = Double.parseDouble(request.getParameter("length3"));

		} catch (NumberFormatException e) {
			// TODO: handle exception
			//�ж�����������Ƿ�Ϸ�
			session.setAttribute("error", "��������ȷ��ʽ������");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		//�ж�������������Ƿ�Ϊ0
		if (length1 <= 0||length2 <= 0||length3 <= 0) {
			session.setAttribute("error", "���������0������");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		//�ж������ε�����֮���Ƿ���ڵ�������
		Triangle triangle = new Triangle(length1, length2, length3);
		if(!isTriangle(triangle)) {
			session.setAttribute("error", "����������߲�����������Σ�����������");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		//���������ε����
		double area = computArea(triangle);
		session.setAttribute("area", area);
		response.sendRedirect(request.getContextPath() + "/show.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private boolean isTriangle(Triangle triangle) {
		if ((triangle.getLength1() + triangle.getLength2() > triangle.getLength3()) 
				&& (triangle.getLength1() + triangle.getLength3() > triangle.getLength2()) 
				&& (triangle.getLength3() + triangle.getLength2() > triangle.getLength1())) {
			return true;
		}
		return false;
	}

	private double computArea(Triangle triangle) {
		double area = 0;
		double p = (triangle.getLength1() + triangle.getLength2() + triangle.getLength3()) / 2;
		area = Math.sqrt(p * (p - triangle.getLength1()) * (p - triangle.getLength2()) * (p - triangle.getLength3()));
		return area;
	}

}
