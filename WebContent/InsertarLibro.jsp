<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- sentencias de import necesarias para jdbc -->
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>

<%
	String isbn = request.getParameter("isbn");
	String titulo = request.getParameter("titulo");
	String categoria = request.getParameter("categoria");
	
	Connection conexion = null;
	Statement sentencia = null;
	
	int filas=0;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/arquitecturajava", "root", "root");
		sentencia = conexion.createStatement();

		String consultaSQL = "insert into Libros (isbn,titulo,categoria) values ";
		consultaSQL += "('" + isbn + "','" + titulo + "','" + categoria + "')";

		filas = sentencia.executeUpdate(consultaSQL);
		response.sendRedirect("MostrarLibros.jsp");
		} catch (ClassNotFoundException e) {
				System.out.println("Error en la carga del driver" + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Error accediendo a la base de datos" + e.getMessage());
		} finally {
			if (sentencia != null) {
				try {
					sentencia.close();
					}catch (SQLException e){
						System.out.println("Error cerrando la sentencia" + e.getMessage());
					}
			}
			if (conexion != null) {
				try {
					conexion.close();
				}catch (SQLException e){
					System.out.println("Error cerrando la conexion" + e.getMessage());
				}
			}
		}
%>