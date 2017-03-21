package portra.portranet;

public class BookmarkDO {
	// 멤버변수 선언
	private int bm_id;
	private String pj_id;
	private String username; 
	private String title;
	private String img;
	private String src;

	public int getBm_id() {
		return bm_id;
	}
	public void setBm_id(int bm_id) {
		this.bm_id = bm_id;
	}
	public String getBMPj_id() {
		return pj_id;
	}
	public void setBMPj_id(String pj_id) {
		this.pj_id = pj_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
}