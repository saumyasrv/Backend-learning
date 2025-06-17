package com.user;


import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
//user package is servlets package here
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.lang.invoke.StringConcatFactory;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getting all the incoming details from the request..
		String userName = request.getParameter("user_name");
		String userEmail = request.getParameter("user_email");
		String userPassword = request.getParameter("user_password");
		Part part =request.getPart("image"); //Part is used to store image or file type of content
		String fileName = part.getSubmittedFileName();
		
		
		PrintWriter out = response.getWriter();	
//		out.println(fileName);
		
//		out.println(userName);
//		out.println(userEmail);
//		out.println(userPassword);
		
		//connection with jdbc
		try {
			
			Thread.sleep(3000);
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			    String url = "jdbc:mysql://localhost:3306/register";
				String username = "root";
				String password = "root";

			   Connection con = DriverManager.getConnection(url, username, password);
			   
			   //query
			   String query = "insert into user(name, password, email, imageName) values(?,?,?,?)";
			   
			   
			   PreparedStatement pstmt = con.prepareStatement(query);
			   
			   pstmt.setString(1, userName);
			   pstmt.setString(2, userPassword);
			   pstmt.setString(3, userEmail);
			   pstmt.setString(4, fileName);
			   
			   pstmt.executeUpdate();
			   
			   //upload file
			   InputStream inputstream = part.getInputStream();
			   byte []data = new byte[inputstream.available()];
			   
			   String path = request.getRealPath("/")+"img"+File.separator+fileName;
			   //in getRealPath method, the slash automatically gives the path till webapp
			   //the path here will be D://backend/Register/src/main/webapp/img/
			   
			   
//			   inputstream.read(data);
		
//			   FileOutputStream fos = new FileOutputStream(path);
//			   fos.write(data);
			   
			   
			   FileOutputStream fos = new FileOutputStream(path);

			   byte[] buffer = new byte[1024];
			   int bytesRead;
			   while ((bytesRead = inputstream.read(buffer)) != -1) {
			       fos.write(buffer, 0, bytesRead);
			   }

			   fos.close();
			   inputstream.close();
			   
/**in my system the image files are getting stored at
 *  C:\Users\HP\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Register\img
 */
			   
			   out.println("done....");
			   


		} catch (Exception e) {
			e.printStackTrace();
			out.println("<h1>error!!!</h1>");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
