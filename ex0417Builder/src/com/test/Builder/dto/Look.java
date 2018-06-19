package com.test.Builder.dto;

public class Look {
	int lookId;
	int userId;
	int urlId;
	String lookTitle;
	String lookHashTag;
	String lookUrlName;
	String lookImg;
	String lookHit;
	String lookHeart;
	String lookRegTime;
	
	public int getLookId() {
		return lookId;
	}
	public void setLookId(int lookId) {
		this.lookId = lookId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getUrlId() {
		return urlId;
	}
	public void setUrlId(int urlId) {
		this.urlId = urlId;
	}
	public String getLookTitle() {
		return lookTitle;
	}
	public void setLookTitle(String lookTitle) {
		this.lookTitle = lookTitle;
	}
	public String getLookHashTag() {
		return lookHashTag;
	}
	public void setLookHashTag(String lookHashTag) {
		this.lookHashTag = lookHashTag;
	}
	public String getLookUrlName() {
		return lookUrlName;
	}
	public void setLookUrlName(String lookUrlName) {
		this.lookUrlName = lookUrlName;
	}
	public String getLookImg() {
		return lookImg;
	}
	public void setLookImg(String lookImg) {
		this.lookImg = lookImg;
	}
	public String getLookHit() {
		return lookHit;
	}
	public void setLookHit(String lookHit) {
		this.lookHit = lookHit;
	}
	public String getLookHeart() {
		return lookHeart;
	}
	public void setLookHeart(String lookHeart) {
		this.lookHeart = lookHeart;
	}
	public String getLookRegTime() {
		return lookRegTime;
	}
	public void setLookRegTime(String lookRegTime) {
		this.lookRegTime = lookRegTime;
	}
	@Override
	public String toString() {
		return "Look [lookId=" + lookId + ", userId=" + userId + ", urlId=" + urlId + ", lookTitle=" + lookTitle
				+ ", lookHashTag=" + lookHashTag + ", lookUrlName=" + lookUrlName + ", lookImg=" + lookImg
				+ ", lookHit=" + lookHit + ", lookHeart=" + lookHeart + ", lookRegTime=" + lookRegTime + "]";
	}
	

}
