package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	private DAO() {}
	private static DAO instance = new DAO();
	public static DAO getInstance() {
		return instance;
	}public static Connection getConnection() throws Exception{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con =
				DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","hrd","1234");
		return con;
	}
	//由ъ뒪�듃 硫붿냼�뱶
	public List<VO> list() throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs  = null;
		
		String query = "select * from tbl_member_003";
		List<VO> list = new ArrayList<VO>();
		VO vo = null;
		
		conn = getConnection();
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			vo = new VO();
			vo.setUserno(rs.getInt("userno"));
			vo.setName(rs.getString("name"));
			vo.setPhone1(rs.getString("phone1"));
			vo.setPhone2(rs.getString("phone2"));
			vo.setPhone3(rs.getString("phone3"));
			vo.setGender(rs.getString("gender"));
			vo.setBirthday(rs.getString("birthday"));
			vo.setRegdate(rs.getString("regdate"));
			
			list.add(vo);
		}
		return list;
	}
	
	//��異쒕━�뒪�듃 硫붿냼�뱶
		public List<VO> lentlist() throws Exception{
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs  = null;
			
			String query = "select l.lentno,l.userno, m.name, c.bookname, l.outdate, l.indate from tbl_member_003 m , tbl_booklent_003 l, tbl_bookcode_003 c where l.userno = m.userno and l.bookno = c.bookno";
			List<VO> list = new ArrayList<VO>();
			VO vo = null;
			
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new VO();
				vo.setLentno(rs.getInt("lentno"));
				vo.setUserno(rs.getInt("userno"));
				vo.setName(rs.getString("name"));
				vo.setBookname(rs.getString("bookname"));
				vo.setOutdate(rs.getString("outdate"));
				vo.setIndate(rs.getString("indate"));
				
				list.add(vo);
			}
			return list;
		}
		//梨낅━�뒪�듃 硫붿냼�뱶
				public List<VO> booklist() throws Exception{
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs  = null;
					
					String query = 
							"select c.bookno, c.bookname, count(case when l.indate is null then '1' end) as dout, count(case when l.indate is not null then '1' end) as din from tbl_bookcode_003 c, tbl_booklent_003 l " + 
							"where c.bookno = l.bookno group by c.bookno,c.bookname";
					List<VO> list = new ArrayList<VO>();
					VO vo = null;
					
					conn = getConnection();
					pstmt = conn.prepareStatement(query);
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						vo = new VO();
						vo.setBookno(rs.getInt("bookno"));
						vo.setBookname(rs.getString("bookname"));
						vo.setOutdate(rs.getString("dout"));
						vo.setIndate(rs.getString("din"));
						
						list.add(vo);
					}
					return list;
				}
	//�쉶�썝踰덊샇 利앷� 硫붿냼�뱶
	public int maxNum() throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs  = null;
		
		String query = "select max(userno) as userno from tbl_member_003 ";
		int row = 0;
		
		conn = getConnection();
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			row = rs.getInt("userno");
		}
		return row;
	}
	//�벑濡� 硫붿냼�뱶
	public int insert(VO vo) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;

		String query = "insert into tbl_member_003 values (?,?,?,?,?,?,?,?)";
		int row = 0;
		
		conn = getConnection();
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, vo.getUserno());
		pstmt.setString(2, vo.getName());
		pstmt.setString(3, vo.getPhone1());
		pstmt.setString(4, vo.getPhone2());
		pstmt.setString(5, vo.getPhone3());
		pstmt.setString(6, vo.getGender());
		pstmt.setString(7, vo.getBirthday());
		pstmt.setString(8, vo.getRegdate());
		
		row = pstmt.executeUpdate();
		return row;
	}
	//��異쒕벑濡� 硫붿냼�뱶
	public int insertLent(VO vo) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;

		String query = "insert into tbl_booklent_003 (lentno,userno,bookno,outdate) values (?,?,?,?)";
		int row = 0;
		
		conn = getConnection();
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, vo.getLentno());
		pstmt.setInt(2, vo.getUserno());
		pstmt.setInt(3, vo.getBookno());
		pstmt.setString(4, vo.getOutdate());
		
		row = pstmt.executeUpdate();
		return row;
	}
	//梨낅벑濡� 硫붿냼�뱶
		public int insertBook(VO vo) throws Exception{
			Connection conn = null;
			PreparedStatement pstmt = null;

			String query = "insert into tbl_bookcode_003 (bookno,bookname,amount) values (?,?,?)";
			int row = 0;
			
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, vo.getBookno());
			pstmt.setString(2, vo.getBookname());
			pstmt.setInt(3, vo.getAmount());
		
			
			row = pstmt.executeUpdate();
			return row;
		}
	//�닔�젙硫붿냼�뱶
	public VO modify(int userno) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "select * from tbl_member_003 where userno = ?";
		VO vo = null;
		
		conn = getConnection();
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, userno);
		rs = pstmt.executeQuery();
		while(rs.next()) {
		vo = new VO();
		vo.setUserno(rs.getInt("userno"));
		vo.setName(rs.getString("name"));
		vo.setPhone1(rs.getString("phone1"));
		vo.setPhone2(rs.getString("phone2"));
		vo.setPhone3(rs.getString("phone3"));
		vo.setGender(rs.getString("gender"));
		vo.setBirthday(rs.getString("birthday"));
		vo.setRegdate(rs.getString("regdate"));
		
		}
		return vo;
	}
	public int modifyUpdate(VO vo)throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;

		String query = "update tbl_member_003 set name = ?,phone1 = ? ,phone2 = ? ,phone3 = ?, gender = ?, birthday = ? where userno = ?";
		int row = 0;
		
		conn = getConnection();
		pstmt = conn.prepareStatement(query);
	
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getPhone1());
		pstmt.setString(3, vo.getPhone2());
		pstmt.setString(4, vo.getPhone3());
		pstmt.setString(5, vo.getGender());
		pstmt.setString(6, vo.getBirthday());
		pstmt.setInt(7, vo.getUserno());
	
		
		row = pstmt.executeUpdate();
		return row;
	}
	// 반납
	public int In(VO vo) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;

		String query = "update tbl_booklent_003 set indate = ? where userno = ? and bookno = ?";
		int row = 0;
		
		conn = getConnection();
		pstmt = conn.prepareStatement(query);
		
		pstmt.setString(1, vo.getIndate());
		pstmt.setInt(2, vo.getUserno());
		pstmt.setInt(3, vo.getBookno());
		
		row = pstmt.executeUpdate();
		return row;
	}
}
