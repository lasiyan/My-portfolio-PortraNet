package portra.portranet;

import java.sql.Timestamp;

public class SendDO {
	// 멤버변수 선언
	private int msg_id;
	private String sd_name;
	private String sd_email; 
	private String message;
	private String sd_username;
	private Timestamp sd_time;
	
	
	public int getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(int msg_id) {
		this.msg_id = msg_id;
	}
	public String getSd_name() {
		return sd_name;
	}
	public void setSd_name(String sd_name) {
		this.sd_name = sd_name;
	}
	public String getSd_email() {
		return sd_email;
	}
	public void setSd_email(String sd_email) {
		this.sd_email = sd_email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSd_username() {
		return sd_username;
	}
	public void setSd_username(String sd_username) {
		this.sd_username = sd_username;
	}
	public Timestamp getSd_time() {
		return sd_time;
	}
	public void setSd_time(Timestamp sd_time) {
		this.sd_time = sd_time;
	}
	
}