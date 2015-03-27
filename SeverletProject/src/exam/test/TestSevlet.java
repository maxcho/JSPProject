package exam.test;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestSevlet
 */
@WebServlet("/TestServlet")
public class TestSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		String gender = request.getParameter("gender");
		
		String id = request.getParameter("id");
		String color = request.getParameter("mycolor");
		String m= request.getParameter("myemail");
		String subject = request.getParameter("subject");
		String text = request.getParameter("textarea");
		
		String[] hobby = request.getParameterValues("hobby");
		
		
		PrintWriter out = response.getWriter();
		out.print(gender + "<br>");
		out.print(id + "<br>");
		out.print(m);
		out.print("<font color='" + color + "'>" +color + "</font><br>");
		
		if(hobby==null)
			out.print("선택해라" + "<br>");
		
		else
			for(int i=0; i<hobby.length;i++)
			out.print(hobby[i] + "<br>");
		out.print(subject + "<br>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
