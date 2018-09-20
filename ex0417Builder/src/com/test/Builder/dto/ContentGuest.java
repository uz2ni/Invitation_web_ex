package com.test.Builder.dto;

public class ContentGuest {

	private int urlGuestId;
	private int urlId;
	private String urlGuestAt;
	private String urlGuestName;
	private String urlGuestPw;
	private String urlGuestText;
	
	public ContentGuest() {	}

	public ContentGuest(int urlId, String urlGuestName, String urlGuestPw, String urlGuestText) {
		super();
		this.urlId = urlId;
		this.urlGuestName = urlGuestName;
		this.urlGuestPw = urlGuestPw;
		this.urlGuestText = urlGuestText;
	}

	public int getUrlGuestId() {
		return urlGuestId;
	}

	public void setUrlGuestId(int urlGuestId) {
		this.urlGuestId = urlGuestId;
	}

	public int getUrlId() {
		return urlId;
	}

	public void setUrlId(int urlId) {
		this.urlId = urlId;
	}

	public String getUrlGuestAt() {
		return urlGuestAt;
	}

	public void setUrlGuestAt(String urlGuestAt) {
		this.urlGuestAt = urlGuestAt;
	}

	public String getUrlGuestName() {
		return urlGuestName;
	}

	public void setUrlGuestName(String urlGuestName) {
		this.urlGuestName = urlGuestName;
	}

	public String getUrlGuestPw() {
		return urlGuestPw;
	}

	public void setUrlGuestPw(String urlGuestPw) {
		this.urlGuestPw = urlGuestPw;
	}

	public String getUrlGuestText() {
		return urlGuestText;
	}

	public void setUrlGuestText(String urlGuestText) {
		this.urlGuestText = urlGuestText;
	}

	@Override
	public String toString() {
		return "ContentGuest [urlGuestId=" + urlGuestId + ", urlId=" + urlId + ", urlGuestAt=" + urlGuestAt
				+ ", urlGuestName=" + urlGuestName + ", urlGuestPw=" + urlGuestPw + ", urlGuestText=" + urlGuestText
				+ "]";
	}
}
