package eltest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EltestServ1")
public class EltestServ1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//객체배열
		String[] arr = {"키위", "바나나", "사과"};
		request.setAttribute("fruit", arr);
		
		Member[] arr2 = { new Member("choi", "최길동"),
						new Member("hong", "홍길동")
						};
		request.setAttribute("user", arr2);
		
		
		//map
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("title", "첫번째");
		map.put("content", "첫번째내용");
		request.setAttribute("board", map);
		
		
		//Vo
		request.setAttribute("login", new Member("kim","김기자"));
		
		
		//list
		ArrayList<Member> list = new ArrayList<Member>();
		list.add(new Member("kang", "강기자"));
		list.add(new Member("LEE", "이기자"));
		request.setAttribute("memberlist", list);
		
		
		request.getRequestDispatcher("eltest1.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
