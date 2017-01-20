package controler;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.admin;
import model.choice;
import model.stuInfo;
import model.university;
public class adminService {
	private Connection conn;
	private PreparedStatement pstmt;

	public adminService() {
		conn = new database.conn().getCon();
	}
	
	public boolean valiAdmin(admin admin) {
		try {
			pstmt = conn
					.prepareStatement("select * from admin where name=? and password =?");
			pstmt.setString(1, admin.getName());
			pstmt.setString(2, admin.getPassword());
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
	public List queryChoice(){
		List chois=new ArrayList();
		try{
			pstmt=conn.prepareStatement("SELECT * FROM choice");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				choice stuChoi=new choice();
				stuChoi.setStu_id(rs.getInt(1));
				stuChoi.setName(rs.getString(2));
				stuChoi.setChoice1(rs.getString(3));
				stuChoi.setChoice2(rs.getString(4));
				stuChoi.setChoice3(rs.getString(3));
				chois.add(stuChoi);
				
			}
			return chois;
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}
	}
	public List queryUni(){
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
	public boolean updateUni(university uni){
		try{
			pstmt=conn.prepareStatement("UPDATE university SET u_name=?,country=?,city=?,major=?,time=? where u_id=?");
			pstmt.setString(1,uni.getU_name());
			pstmt.setString(2,uni.getCountry());
			pstmt.setString(3,uni.getCity());
			pstmt.setString(4,uni.getMajor());
			pstmt.setString(5,uni.getTime());
			pstmt.setInt(6,uni.getU_id());
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}
		
	}



	


}
