package controler;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import model.stuInfo;
import model.studentTable;
import model.university;
import model.comment;
import model.choice;

public class studentService {
	private Connection conn;
	private PreparedStatement pstmt;

	public studentService() {
		conn = new database.conn().getCon();
	}

	public boolean valiStu(studentTable student) {
		try {
			pstmt = conn
					.prepareStatement("select * from student where name=? and password =?");
			pstmt.setString(1, student.getName());
			pstmt.setString(2, student.getPassword());
			ResultSet rs = pstmt.executeQuery();

			if (rs.next())
				return true;
			else
				return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	public List queryStu(String name) {
		List stus = new ArrayList();

		try {
			pstmt = conn
					.prepareStatement("SELECT * FROM stu_info WHERE name=? ");
			pstmt.setString(1, name);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				stuInfo stu = new stuInfo();
				stu.setStu_id(rs.getInt(1));
				stu.setName(rs.getString(2));
				stu.setGender(rs.getByte(3));
				stu.setMajor(rs.getString(4));
				stu.setGrade(rs.getString(5));
				stu.setRemark(rs.getString(6));
				stus.add(stu);
			}
			return stus;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;

		}
	}

	public List queryAllUni() {
		List unis = new ArrayList();
		try {
			pstmt = conn.prepareStatement("SELECT * FROM university");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				university uni = new university();
				uni.setU_id(rs.getInt(1));
				uni.setU_name(rs.getString(2));
				uni.setCountry(rs.getString(3));
				uni.setCity(rs.getString(4));
				uni.setMajor(rs.getString(5));
				uni.setTime(rs.getString(6));
				unis.add(uni);
			}
			return unis;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public List queryAllcomm() {
		List coms = new ArrayList();
		try {
			pstmt = conn.prepareStatement("SELECT * FROM comment");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				comment com = new comment();
				com.setStu_name(rs.getString(1));
				
				com.setComment(rs.getString(3));
				com.setCom_id(rs.getInt(4));
				com.setTime(rs.getString(5));
				coms.add(com);
			}
			return coms;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean addComment(comment comm, String name) {
		try {
			pstmt = conn.prepareStatement("insert into comment"
					+ "(stu_name,comment)" + "values(?,?)");
			pstmt.setString(1, name);
			
			pstmt.setString(3, comm.getComment());

			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public choice queryChoice(String name){
		
		
		
		try{
			pstmt = conn.prepareStatement("SELECT * FROM choice WHERE name=? ");
			pstmt.setString(1,name);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				choice cho=new choice();
				
				cho.setStu_id(rs.getInt(1));
				cho.setName(rs.getString(2));
				cho.setChoice1(rs.getString(3));
				cho.setChoice2(rs.getString(4));
				cho.setChoice3(rs.getString(5));
				return cho;
				}
			
			return null;
			   
			
			
		}
		catch (SQLException e){
			e.printStackTrace();
			return null;
			
		}
	}

	public boolean updateCho(String choice1,String choice2,String choice3, String name) {
		try {
			    pstmt = conn
						.prepareStatement("update choice set choice1=?,choice2=?,choice3=? where name=?");
				pstmt.setString(1, choice1);
				pstmt.setString(2, choice2);
				pstmt.setString(3, choice3);
				pstmt.setString(4, name);
				pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;

		}
		}
	
		
		public boolean Rechoose(String rname) {
			try {
				
			pstmt = conn.prepareStatement("update choice set choice1=null where name=?");
					
					pstmt.setString(1, rname);
					pstmt.executeUpdate();
				
			

				return true;
			}catch (SQLException e) {
				e.printStackTrace();
				return false;

			}
		}
		public university queryUnibyID(int id) {
			

			try {
				pstmt = conn
						.prepareStatement("SELECT * FROM university WHERE u_id=? ");
				pstmt.setInt(1, id);
				ResultSet rs = pstmt.executeQuery();
				if (rs.next()) {
					university uni1 = new university();
					uni1.setU_id(rs.getInt(1));
					uni1.setU_name(rs.getString(2));
					uni1.setCountry(rs.getString(3));
					uni1.setCity(rs.getString(4));
					uni1.setMajor(rs.getString(5));
					uni1.setTime(rs.getString(6));
					return uni1;
				}
				return null;

			} catch (SQLException e) {
				e.printStackTrace();
				return null;

			}
		}
		public List queryCommID(int id) {
			List coms = new ArrayList();
			try {
				pstmt = conn.prepareStatement("SELECT * FROM comment WHERE u_id=?");
				pstmt.setInt(1, id);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					comment com = new comment();
					com.setStu_name(rs.getString(1));
					
					com.setComment(rs.getString(2));
					com.setCom_id(rs.getInt(3));
					com.setTime(rs.getString(4));
					coms.add(com);
				}
				return coms;
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
		}
		public boolean addCommentID(String comm, String name,int id) {
			try {
				pstmt = conn.prepareStatement("insert into comment"
						+ "(stu_name,comment,u_id)" + "values(?,?,?)");
				pstmt.setString(1, name);
				
				pstmt.setString(2, comm);
				pstmt.setInt(3, id);
				pstmt.executeUpdate();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}


}
