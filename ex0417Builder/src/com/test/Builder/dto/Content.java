package com.test.Builder.dto;

// Content
public class Content {
//	기본 정보
	private int urlId;
	private int userId;
	private String urlName;
	private int type;
	private String payDate;
	private String lastDate;
//	edit form
//	스킨 선택
	private String skin;
//	상단 정보
	private String topTitle;
	private String topImgFile;
	private String topImgAlign;
	private String topFontColor;
	private String topFontAlign;
//	상세 정보 - 기본 정보
	private String infoDateStart;
	private String infoDateEnd;
	private int infoDdayChk;
	private String infoTime;
	private String infoPlace;
//	상세 정보 - 부가 정보
	private String addInfoWelcome;
	private String addInfoImgName;
	private String addInfoImgProfile;
	private String addInfoImgSit;
	private String addInfoCallName;
	private String addInfoCallNumber;
	private String addInfoLogoHoldName;
	private String addInfoHoldImg;
	private String addInfoLogoHelpName;
	private String addInfoHelpImg;
//	상세 정보 - 위치 정보
	private String infoAddress;
	private int infoNavi;
	private int infoFind;
	private int infoLoadImgChk;
	private String infoLoadImg;
	private String infoBus;
	private String infoSubway;
	private String infoParking;
//	멀티미디어 - 갤러리
	private int galleryChk;
	private String galleryType;
	private String galleryUploadImg;
//	멀티미디어 - 동영상
	private int videoChk;
	private String videoLink;
//	계좌 연동
	private int accountChk;
	private String accountSelect;
	private int accountMoney;
//	추가 기능 - 참석 여부
	private int attendChk;
//	추가 기능 - 방명록
	private int commentChk;
//	추가 기능 - SNS사용여부
	private int snsShareChk;
	private String selectSns;
	private int snsMsgChk;
	private String snsMsgContent;
	
	public int getUrlId() {
		return urlId;
	}
	public void setUrlId(int urlId) {
		this.urlId = urlId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUrlName() {
		return urlName;
	}
	public void setUrlName(String urlName) {
		this.urlName = urlName;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String getLastDate() {
		return lastDate;
	}
	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}
	public String getSkin() {
		return skin;
	}
	public void setSkin(String skin) {
		this.skin = skin;
	}
	public String getTopTitle() {
		return topTitle;
	}
	public void setTopTitle(String topTitle) {
		this.topTitle = topTitle;
	}
	public String getTopImgFile() {
		return topImgFile;
	}
	public void setTopImgFile(String topImgFile) {
		this.topImgFile = topImgFile;
	}
	public String getTopImgAlign() {
		return topImgAlign;
	}
	public void setTopImgAlign(String topImgAlign) {
		this.topImgAlign = topImgAlign;
	}
	public String getTopFontColor() {
		return topFontColor;
	}
	public void setTopFontColor(String topFontColor) {
		this.topFontColor = topFontColor;
	}
	public String getTopFontAlign() {
		return topFontAlign;
	}
	public void setTopFontAlign(String topFontAlign) {
		this.topFontAlign = topFontAlign;
	}
	public String getInfoDateStart() {
		return infoDateStart;
	}
	public void setInfoDateStart(String infoDateStart) {
		this.infoDateStart = infoDateStart;
	}
	public String getInfoDateEnd() {
		return infoDateEnd;
	}
	public void setInfoDateEnd(String infoDateEnd) {
		this.infoDateEnd = infoDateEnd;
	}
	public int getInfoDdayChk() {
		return infoDdayChk;
	}
	public void setInfoDdayChk(int infoDdayChk) {
		this.infoDdayChk = infoDdayChk;
	}
	public String getInfoTime() {
		return infoTime;
	}
	public void setInfoTime(String infoTime) {
		this.infoTime = infoTime;
	}
	public String getInfoPlace() {
		return infoPlace;
	}
	public void setInfoPlace(String infoPlace) {
		this.infoPlace = infoPlace;
	}
	public String getAddInfoWelcome() {
		return addInfoWelcome;
	}
	public void setAddInfoWelcome(String addInfoWelcome) {
		this.addInfoWelcome = addInfoWelcome;
	}
	public String getAddInfoImgName() {
		return addInfoImgName;
	}
	public void setAddInfoImgName(String addInfoImgName) {
		this.addInfoImgName = addInfoImgName;
	}
	public String getAddInfoImgProfile() {
		return addInfoImgProfile;
	}
	public void setAddInfoImgProfile(String addInfoImgProfile) {
		this.addInfoImgProfile = addInfoImgProfile;
	}
	public String getAddInfoImgSit() {
		return addInfoImgSit;
	}
	public void setAddInfoImgSit(String addInfoImgSit) {
		this.addInfoImgSit = addInfoImgSit;
	}
	public String getAddInfoCallName() {
		return addInfoCallName;
	}
	public void setAddInfoCallName(String addInfoCallName) {
		this.addInfoCallName = addInfoCallName;
	}
	public String getAddInfoCallNumber() {
		return addInfoCallNumber;
	}
	public void setAddInfoCallNumber(String addInfoCallNumber) {
		this.addInfoCallNumber = addInfoCallNumber;
	}

	public String getAddInfoLogoHoldName() {
		return addInfoLogoHoldName;
	}
	public void setAddInfoLogoHoldName(String addInfoLogoHoldName) {
		this.addInfoLogoHoldName = addInfoLogoHoldName;
	}
	public String getAddInfoHoldImg() {
		return addInfoHoldImg;
	}
	public void setAddInfoHoldImg(String addInfoHoldImg) {
		this.addInfoHoldImg = addInfoHoldImg;
	}
	public String getAddInfoLogoHelpName() {
		return addInfoLogoHelpName;
	}
	public void setAddInfoLogoHelpName(String addInfoLogoHelpName) {
		this.addInfoLogoHelpName = addInfoLogoHelpName;
	}
	public String getAddInfoHelpImg() {
		return addInfoHelpImg;
	}
	public void setAddInfoHelpImg(String addInfoHelpImg) {
		this.addInfoHelpImg = addInfoHelpImg;
	}
	public String getInfoAddress() {
		return infoAddress;
	}
	public void setInfoAddress(String infoAddress) {
		this.infoAddress = infoAddress;
	}
	public int getInfoNavi() {
		return infoNavi;
	}
	public void setInfoNavi(int infoNavi) {
		this.infoNavi = infoNavi;
	}
	public int getInfoFind() {
		return infoFind;
	}
	public void setInfoFind(int infoFind) {
		this.infoFind = infoFind;
	}
	public int getInfoLoadImgChk() {
		return infoLoadImgChk;
	}
	public void setInfoLoadImgChk(int infoLoadImgChk) {
		this.infoLoadImgChk = infoLoadImgChk;
	}
	public String getInfoLoadImg() {
		return infoLoadImg;
	}
	public void setInfoLoadImg(String infoLoadImg) {
		this.infoLoadImg = infoLoadImg;
	}
	public String getInfoBus() {
		return infoBus;
	}
	public void setInfoBus(String infoBus) {
		this.infoBus = infoBus;
	}
	public String getInfoSubway() {
		return infoSubway;
	}
	public void setInfoSubway(String infoSubway) {
		this.infoSubway = infoSubway;
	}
	public String getInfoParking() {
		return infoParking;
	}
	public void setInfoParking(String infoParking) {
		this.infoParking = infoParking;
	}
	public int getGalleryChk() {
		return galleryChk;
	}
	public void setGalleryChk(int galleryChk) {
		this.galleryChk = galleryChk;
	}
	public String getGalleryType() {
		return galleryType;
	}
	public void setGalleryType(String galleryType) {
		this.galleryType = galleryType;
	}
	public String getGalleryUploadImg() {
		return galleryUploadImg;
	}
	public void setGalleryUploadImg(String galleryUploadImg) {
		this.galleryUploadImg = galleryUploadImg;
	}
	public int getVideoChk() {
		return videoChk;
	}
	public void setVideoChk(int videoChk) {
		this.videoChk = videoChk;
	}
	public String getVideoLink() {
		return videoLink;
	}
	public void setVideoLink(String videoLink) {
		this.videoLink = videoLink;
	}
	public int getAccountChk() {
		return accountChk;
	}
	public void setAccountChk(int accountChk) {
		this.accountChk = accountChk;
	}
	public String getAccountSelect() {
		return accountSelect;
	}
	public void setAccountSelect(String accountSelect) {
		this.accountSelect = accountSelect;
	}
	public int getAccountMoney() {
		return accountMoney;
	}
	public void setAccountMoney(int accountMoney) {
		this.accountMoney = accountMoney;
	}
	public int getAttendChk() {
		return attendChk;
	}
	public void setAttendChk(int attendChk) {
		this.attendChk = attendChk;
	}
	public int getCommentChk() {
		return commentChk;
	}
	public void setCommentChk(int commentChk) {
		this.commentChk = commentChk;
	}
	public int getSnsShareChk() {
		return snsShareChk;
	}
	public void setSnsShareChk(int snsShareChk) {
		this.snsShareChk = snsShareChk;
	}
	public String getSelectSns() {
		return selectSns;
	}
	public void setSelectSns(String selectSns) {
		this.selectSns = selectSns;
	}
	public int getSnsMsgChk() {
		return snsMsgChk;
	}
	public void setSnsMsgChk(int snsMsgChk) {
		this.snsMsgChk = snsMsgChk;
	}
	public String getSnsMsgContent() {
		return snsMsgContent;
	}
	public void setSnsMsgContent(String snsMsgContent) {
		this.snsMsgContent = snsMsgContent;
	}
	@Override
	public String toString() {
		return "Content [urlId=" + urlId + ", userId=" + userId + ", urlName=" + urlName + ", type=" + type
				+ ", payDate=" + payDate + ", lastDate=" + lastDate + ", skin=" + skin + ", topTitle=" + topTitle
				+ ", topImgFile=" + topImgFile + ", topImgAlign=" + topImgAlign + ", topFontColor=" + topFontColor
				+ ", topFontAlign=" + topFontAlign + ", infoDateStart=" + infoDateStart + ", infoDateEnd=" + infoDateEnd
				+ ", infoDdayChk=" + infoDdayChk + ", infoTime=" + infoTime + ", infoPlace=" + infoPlace
				+ ", addInfoWelcome=" + addInfoWelcome + ", addInfoImgName=" + addInfoImgName + ", addInfoImgProfile="
				+ addInfoImgProfile + ", addInfoImgSit=" + addInfoImgSit + ", addInfoCallName=" + addInfoCallName
				+ ", addInfoCallNumber=" + addInfoCallNumber + ", addInfoLogoHoldName=" + addInfoLogoHoldName
				+ ", addInfoHoldImg=" + addInfoHoldImg + ", addInfoLogoHelpName=" + addInfoLogoHelpName
				+ ", addInfoHelpImg=" + addInfoHelpImg + ", infoAddress=" + infoAddress + ", infoNavi=" + infoNavi
				+ ", infoFind=" + infoFind + ", infoLoadImgChk=" + infoLoadImgChk + ", infoLoadImg=" + infoLoadImg
				+ ", infoBus=" + infoBus + ", infoSubway=" + infoSubway + ", infoParking=" + infoParking
				+ ", galleryChk=" + galleryChk + ", galleryType=" + galleryType + ", galleryUploadImg="
				+ galleryUploadImg + ", videoChk=" + videoChk + ", videoLink=" + videoLink + ", accountChk="
				+ accountChk + ", accountSelect=" + accountSelect + ", accountMoney=" + accountMoney + ", attendChk="
				+ attendChk + ", commentChk=" + commentChk + ", snsShareChk=" + snsShareChk + ", selectSns=" + selectSns
				+ ", snsMsgChk=" + snsMsgChk + ", snsMsgContent=" + snsMsgContent + "]";
	}
	
	
}
