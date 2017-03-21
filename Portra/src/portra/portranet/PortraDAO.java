package portra.portranet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/**
 * File : PortraBean.java
 * Desc : 포트폴리오 DAO 클래스
 * @author 오원열(lasiyan@naver.com)
 */

public class PortraDAO {
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy.MM.dd HH:mm:ss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	// MySQL 연결정보
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/portra"; 
	
	// DB 연결  메서드
	void connect() {
		try {
			Class.forName(jdbc_driver);
				conn = DriverManager.getConnection(jdbc_url,"root","toor");
				
				//System.out.println("/================================================/");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// DB 연결 해제 메서드
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	// 특정 프로젝트 게시글 가져오는 메서드
	public ProjectDO getDB(int gb_id) {
		connect();
		
		String sql = "select * from project_tb where pj_id=?";
		ProjectDO project = new ProjectDO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,gb_id);
			ResultSet rs = pstmt.executeQuery();
			
			// 데이터가 하나만 있으므로 rs.next()를 한번만 실행 한다.
			rs.next();
			project.setPj_id(rs.getInt("pj_id"));
			project.setPj_img(rs.getString("pj_img"));
			project.setPj_title(rs.getString("pj_title"));
			project.setPj_sub(rs.getString("pj_sub"));
			project.setPj_category(rs.getString("pj_category"));
			project.setPj_bmcount(rs.getInt("pj_bmcount"));
			
			project.setPj_dimg1(rs.getString("pj_dimg1"));
			project.setPj_dinfo1(rs.getString("pj_dinfo1"));
			project.setPj_dimg2(rs.getString("pj_dimg2"));
			project.setPj_dinfo2(rs.getString("pj_dinfo2"));
			project.setPj_dimg3(rs.getString("pj_dimg3"));
			project.setPj_dinfo3(rs.getString("pj_dinfo3"));
			project.setPj_dimg4(rs.getString("pj_dimg4"));
			project.setPj_dinfo4(rs.getString("pj_dinfo4"));
			project.setPj_dimg5(rs.getString("pj_dimg5"));
			project.setPj_dinfo5(rs.getString("pj_dinfo5"));
			project.setPj_dimg6(rs.getString("pj_dimg6"));
			project.setPj_dinfo6(rs.getString("pj_dinfo6"));
			project.setPj_dimg7(rs.getString("pj_dimg7"));
			project.setPj_dinfo7(rs.getString("pj_dinfo7"));
			
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return project;
	}
	
	
	// 전체 프로젝트 목록을 가져오는 메서드
	public ArrayList<ProjectDO> getDBList() {
		connect();
		ArrayList<ProjectDO> projects = new ArrayList<ProjectDO>();
		
		String sql = "select * from project_tb order by pj_id asc";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ProjectDO project = new ProjectDO();
				
				project.setPj_id(rs.getInt("pj_id"));
				project.setPj_img(rs.getString("pj_img"));
				project.setPj_title(rs.getString("pj_title"));
				project.setPj_sub(rs.getString("pj_sub"));
				project.setPj_category(rs.getString("pj_category"));
				project.setPj_bmcount(rs.getInt("pj_bmcount"));
				
				project.setPj_dimg1(rs.getString("pj_dimg1"));
				project.setPj_dinfo1(rs.getString("pj_dinfo1"));
				project.setPj_dimg2(rs.getString("pj_dimg2"));
				project.setPj_dinfo2(rs.getString("pj_dinfo2"));
				project.setPj_dimg3(rs.getString("pj_dimg3"));
				project.setPj_dinfo3(rs.getString("pj_dinfo3"));
				project.setPj_dimg4(rs.getString("pj_dimg4"));
				project.setPj_dinfo4(rs.getString("pj_dinfo4"));
				project.setPj_dimg5(rs.getString("pj_dimg5"));
				project.setPj_dinfo5(rs.getString("pj_dinfo5"));
				project.setPj_dimg6(rs.getString("pj_dimg6"));
				project.setPj_dinfo6(rs.getString("pj_dinfo6"));
				project.setPj_dimg7(rs.getString("pj_dimg7"));
				project.setPj_dinfo7(rs.getString("pj_dinfo7"));

				projects.add(project);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return projects;
	}
	
	// 웹 실행 시 프로젝트 세팅
	public ArrayList<ProjectDO> projectSetting() {
		connect();
		ArrayList<ProjectDO> projectList = new ArrayList<ProjectDO>();
		
		String sql = "select pj_id, pj_img, pj_title, pj_sub, pj_category from project_tb order by pj_id asc";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ProjectDO project = new ProjectDO();
				
				project.setPj_id(rs.getInt("pj_id"));
				project.setPj_img(rs.getString("pj_img"));
				project.setPj_title(rs.getString("pj_title"));
				project.setPj_sub(rs.getString("pj_sub"));
				project.setPj_category(rs.getString("pj_category"));

				projectList.add(project);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return projectList;
	}
	
	// 로그인 수행 DAO
	public boolean getLoginCheck(String email, String pw) throws Exception {
		connect();
		String sql = "select us_email, us_password from user_tb where us_email = ? and us_password = ?";
		UserDO user = new UserDO();
		boolean chk = false;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pw);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				user.setUs_email(rs.getString("us_email"));
				user.setUs_password(rs.getString("us_password"));
				
				if(email.equals(user.getUs_email()) && pw.equals(user.getUs_password())) {
					chk = true;
					System.out.println("/===================사용자 접속 기록===================/");
					System.out.println ("   "+ dTime +" "+email+"님 접속");
					break;
				}
			}
			
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return chk;
	}
	
	// 회원가입시 아이디 중복 체크
	public boolean sameChk(String email) throws Exception {
		connect();
		boolean chk = false;
		
		String getEmail = "";
		String sql = "select us_email from user_tb";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				getEmail = rs.getString("us_email");
				if(getEmail.equals(email)) {
					chk = true;
					break;
				}
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			chk = false;
		}
		finally {
			disconnect();
		}
		return chk;
	}
	
	// 회원가입 DAO
	public boolean userSingUp(String email, String pwd) throws Exception {
		connect();
		
		String sql = "insert into user_tb(us_email, us_password) values(?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pwd);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	// 북마크시 기존 등록 여부 체크
	public boolean bookmarkAddChk(String username, String img) throws Exception {
		connect();
		boolean chk = false;
		
		String getimg = "";
		String sql = "select img from bm_tb where username = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				getimg = rs.getString("img");
				if(getimg.equals(img)) {
					chk = true;
					break;
				}
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			chk = false;
		}
		finally {
			disconnect();
		}
		return chk;
	}
	
	// 북마크 등록시 Counting
	public boolean bmCounting(int pj_id) {
		
		String sql = "update project_tb set pj_bmcount = pj_bmcount + 1 where pj_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pj_id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	// 북마크 등록 DAO
	public boolean bookmarkInsert(String username, String pj_id, String img, String imgsrc, String title) throws Exception {
		connect();

		boolean state = bmCounting(Integer.parseInt(pj_id));
		String sql = "insert into bm_tb(pj_id, username, title, img, src) values(?,?,?,?,?)";
		
		if(state == true) {
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pj_id);
				pstmt.setString(2, username);
				pstmt.setString(3, title);
				pstmt.setString(4, img);
				pstmt.setString(5, imgsrc);
				
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
		}
		else {
			System.out.println("북마크 카운팅 에러");
			return false;
		}
	}
		
	
	// 북마크 출력 DAO
	public ArrayList<BookmarkDO> bookmarkShowing(String username) {
		connect();
		ArrayList<BookmarkDO> bookmarkList = new ArrayList<BookmarkDO>();
		
		String sql = "select pj_id, title, src from bm_tb where username = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,username);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				BookmarkDO bookmark = new BookmarkDO();
				bookmark.setBMPj_id(rs.getString("pj_id"));
				bookmark.setTitle(rs.getString("title"));
				bookmark.setSrc(rs.getString("src"));
				
				bookmarkList.add(bookmark);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return bookmarkList;
	}
	
	// 북마크에서 해당 유저의 특정 북마크를 삭제하는 DAO
	public boolean bookmarkDelete(String username, String pj_id) {
		connect();
		
		String sql ="delete from bm_tb where username=? and pj_id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,username);
			pstmt.setString(2,pj_id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	// Contact 메세지 보내기
	public boolean sendMessage(String sdname, String sdemail, String sdmsg, String nowUser) throws Exception {
		connect();
		
		String sql = "insert into send_tb(sd_name, sd_email, message, sd_username) values(?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sdname);
			pstmt.setString(2, sdemail);
			pstmt.setString(3, sdmsg);
			pstmt.setString(4, nowUser);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	// 관리자 페이지 유저 목록 출력
	public ArrayList<UserDO> adminUserShowing() {
		connect();
		ArrayList<UserDO> userList = new ArrayList<UserDO>();
			
		String sql = "select us_email, us_join from user_tb";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				UserDO user = new UserDO();
				user.setUs_email(rs.getString("us_email"));
				user.setUs_join(rs.getTimestamp("us_join"));
				
				userList.add(user);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return userList;
	}
	
	// 관리자 페이지 프로젝트 목록 출력
	public ArrayList<ProjectDO> adminProjectShowing() {
		connect();
		ArrayList<ProjectDO> projectList = new ArrayList<ProjectDO>();
			
		String sql = "select pj_title, pj_img, pj_category, pj_bmcount from project_tb";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ProjectDO project = new ProjectDO();
				project.setPj_title(rs.getString("pj_title"));
				project.setPj_img(rs.getString("pj_img"));
				project.setPj_category(rs.getString("pj_category"));
				project.setPj_bmcount(rs.getInt("pj_bmcount"));
				
				projectList.add(project);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return projectList;
	}
	
	// 관리자 페이지 메세지 목록 출력
		public ArrayList<SendDO> adminMessageShowing() {
			connect();
			ArrayList<SendDO> messageList = new ArrayList<SendDO>();
				
			String sql = "select sd_name, sd_email, message, sd_time from send_tb";
			try {
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					SendDO message = new SendDO();
					message.setSd_name(rs.getString("sd_name"));
					message.setSd_email(rs.getString("sd_email"));
					message.setMessage(rs.getString("message"));
					message.setSd_time(rs.getTimestamp("sd_time"));
					
					messageList.add(message);
				}
				rs.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally {
				disconnect();
			}
			return messageList;
		}
		
		// 관리자 페이지 해당 유저 삭제
		public boolean adminUserDelete(String userID) {
			connect();
			
			String sql ="delete from user_tb where us_email=?";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,userID);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
		}
		
		// 프로젝트 유무 확인
		public boolean PJsameChk(String pjvalue) throws Exception {
			connect();
			boolean chk = false;
			
			String getImg = "";
			String getTitle = "";
			String sql = "select pj_img, pj_title from project_tb";
			try {
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					getImg = rs.getString("pj_img");
					getTitle = rs.getString("pj_title");
					if(getImg.equals(pjvalue) || getTitle.equals(pjvalue)) {
						chk = true;
						break;
					}
				}
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
				chk = false;
			}
			finally {
				disconnect();
			}
			return chk;
		}
		// 관리자 페이지 해당 프로젝트 삭제
		public boolean adminProjectDelete(String pjvalue) {
			connect();
			
			String sql ="delete from project_tb where pj_img=? or pj_title=?";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,pjvalue);
				pstmt.setString(2,pjvalue);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
		}	
		
		// 메세지 보낸 사람 또는 이메일 체크
		public boolean MsgForNameSameChk(String msgSender) throws Exception {
			connect();

			String getName = "";
			String getEmail = "";
			String sql = "select sd_name, sd_email from send_tb";
			try {
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					getName = rs.getString("sd_name");
					getEmail = rs.getString("sd_email");
					if(getName.equals(msgSender) || getEmail.equals(msgSender)) {
						return true;
					}
				}
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally {
				disconnect();
			}
			return false;
		}
		
		public boolean MsgForContentChk(String msgContent) throws Exception {
			connect();
			
			int count = 0;
			String sql = "select message from send_tb where message like ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,"%"+msgContent+"%");
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					count++;
				}
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally {
				disconnect();
			}
			if(count > 0) {
				return true;
			} else {
				return false;
			}
		}
		
		// 보낸 사람 이름이나 이메일로 삭제
		public boolean adminMsgForNameDelete(String sender) {
			connect();
			
			String sql ="delete from send_tb where sd_name=? or sd_email=?";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,sender);
				pstmt.setString(2,sender);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
		}	
		
		// 보낸 사람 이름이나 이메일로 삭제
		public boolean adminMsgForContentDelete(String content) {
			connect();
			
			String sql ="delete from send_tb where message like ?";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,"%"+content+"%");
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
		}	
		
		// 전체 메세지 함 삭제
		public boolean adminMsgAllDelete() {
			connect();
					
			String sql ="delete from send_tb";
					
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
	}	
}