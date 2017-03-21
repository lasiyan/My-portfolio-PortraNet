package portra.portranet;

import java.sql.Timestamp;

public class UserDO {
	// 멤버변수 선언
	private int us_id;
	private String us_email;
	private String us_password; 
	private Timestamp us_join;
	
	public int getUs_id() {
		return us_id;
	}
	public void setUs_id(int us_id) {
		this.us_id = us_id;
	}
	public String getUs_email() {
		return us_email;
	}
	public void setUs_email(String us_email) {
		this.us_email = us_email;
	}
	public String getUs_password() {
		return us_password;
	}
	public void setUs_password(String us_password) {
		this.us_password = us_password;
	}
	public Timestamp getUs_join() {
		return us_join;
	}
	public void setUs_join(Timestamp us_join) {
		this.us_join = us_join;
	}
}