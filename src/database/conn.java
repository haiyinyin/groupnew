package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
public Connection getCon()
{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost/groupe";
		String user="root";
		String password="19930908";
		Connection conn=DriverManager.getConnection(url,user,password);
		System.out.println(conn.getMetaData().getURL());
		return conn;
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return null;
	}
	
}
}
