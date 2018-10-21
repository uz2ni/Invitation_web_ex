package com.test.Builder.dto;

public class ContentAttend {
	private int urlAttendId;
	private int urlId;
	private String urlAttendAt;
	private String urlAttendName;
	private String urlAttendPassword;
	private int urlAttendChk;
	private String urlAttendContent;
	
	public ContentAttend() {}
	public ContentAttend(int urlId, String urlAttendName, String urlAttendPassword, int urlAttendChk,
			String urlAttendContent) {
		super();
		this.urlId = urlId;
		this.urlAttendName = urlAttendName;
		this.urlAttendPassword = urlAttendPassword;
		this.urlAttendChk = urlAttendChk;
		this.urlAttendContent = urlAttendContent;
	}
	
	public int getUrlAttendId() {
		return urlAttendId;
	}
	public void setUrlAttendId(int urlAttendId) {
		this.urlAttendId = urlAttendId;
	}
	public int getUrlId() {
		return urlId;
	}
	public void setUrlId(int urlId) {
		this.urlId = urlId;
	}
	public String getUrlAttendAt() {
		return urlAttendAt;
	}
	public void setUrlAttendAt(String urlAttendAt) {
		this.urlAttendAt = urlAttendAt;
	}
	public String getUrlAttendName() {
		return urlAttendName;
	}
	public void setUrlAttendName(String urlAttendName) {
		this.urlAttendName = urlAttendName;
	}
	public String getUrlAttendPassword() {
		return urlAttendPassword;
	}
	public void setUrlAttendPassword(String urlAttendPassword) {
		this.urlAttendPassword = urlAttendPassword;
	}
	public int getUrlAttendChk() {
		return urlAttendChk;
	}
	public void setUrlAttendChk(int urlAttendChk) {
		this.urlAttendChk = urlAttendChk;
	}
	public String getUrlAttendContent() {
		return urlAttendContent;
	}
	public void setUrlAttendContent(String urlAttendContent) {
		this.urlAttendContent = urlAttendContent;
	}
	@Override
	public String toString() {
		return "ContentAttend [urlAttendId=" + urlAttendId + ", urlId=" + urlId + ", urlAttendAt=" + urlAttendAt
				+ ", urlAttendName=" + urlAttendName + ", urlAttendPassword=" + urlAttendPassword + ", urlAttendChk="
				+ urlAttendChk + ", urlAttendContent=" + urlAttendContent + "]";
	}
	
}
