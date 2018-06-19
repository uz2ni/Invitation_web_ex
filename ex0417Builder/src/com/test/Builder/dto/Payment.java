package com.test.Builder.dto;

public class Payment {
	int paymentId;
	int userId;
	String merchantUid;
	String paymentStyle;
	String paymentName;
	int paymentMonth;
	int paymentType;
	int paymentAmount;
	String paymentUrlName;
	String paymentDate;
	String paymentImpUid;
	String paymentPg;
	String paymentPayMethod;
	String paymentBuyerEmail;
	String paymentBuyerName;
	String paymentBuyerTel;
	String paymentStatus;
	String paymentAt;
	String paymentReceiptUrl;
	
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getMerchantUid() {
		return merchantUid;
	}
	public void setMerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}
	public String getPaymentStyle() {
		return paymentStyle;
	}
	public void setPaymentStyle(String paymentStyle) {
		this.paymentStyle = paymentStyle;
	}
	public String getPaymentName() {
		return paymentName;
	}
	public void setPaymentName(String paymentName) {
		this.paymentName = paymentName;
	}
	public int getPaymentMonth() {
		return paymentMonth;
	}
	public void setPaymentMonth(int paymentMonth) {
		this.paymentMonth = paymentMonth;
	}
	public int getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(int paymentType) {
		this.paymentType = paymentType;
	}
	public int getPaymentAmount() {
		return paymentAmount;
	}
	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}
	public String getPaymentUrlName() {
		return paymentUrlName;
	}
	public void setPaymentUrlName(String paymentUrlName) {
		this.paymentUrlName = paymentUrlName;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getPaymentImpUid() {
		return paymentImpUid;
	}
	public void setPaymentImpUid(String paymentImpUid) {
		this.paymentImpUid = paymentImpUid;
	}
	public String getPaymentPg() {
		return paymentPg;
	}
	public void setPaymentPg(String paymentPg) {
		this.paymentPg = paymentPg;
	}
	public String getPaymentPayMethod() {
		return paymentPayMethod;
	}
	public void setPaymentPayMethod(String paymentPayMethod) {
		this.paymentPayMethod = paymentPayMethod;
	}
	public String getPaymentBuyerEmail() {
		return paymentBuyerEmail;
	}
	public void setPaymentBuyerEmail(String paymentBuyerEmail) {
		this.paymentBuyerEmail = paymentBuyerEmail;
	}
	public String getPaymentBuyerName() {
		return paymentBuyerName;
	}
	public void setPaymentBuyerName(String paymentBuyerName) {
		this.paymentBuyerName = paymentBuyerName;
	}
	public String getPaymentBuyerTel() {
		return paymentBuyerTel;
	}
	public void setPaymentBuyerTel(String paymentBuyerTel) {
		this.paymentBuyerTel = paymentBuyerTel;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public String getPaymentAt() {
		return paymentAt;
	}
	public void setPaymentAt(String paymentAt) {
		this.paymentAt = paymentAt;
	}
	public String getPaymentReceiptUrl() {
		return paymentReceiptUrl;
	}
	public void setPaymentReceiptUrl(String paymentReceiptUrl) {
		this.paymentReceiptUrl = paymentReceiptUrl;
	}
	@Override
	public String toString() {
		return "Payment [paymentId=" + paymentId + ", userId=" + userId + ", merchantUid=" + merchantUid
				+ ", paymentName=" + paymentName + ", paymentMonth=" + paymentMonth + ", paymentType=" + paymentType
				+ ", paymentAmount=" + paymentAmount + ", paymentUrlName=" + paymentUrlName + ", paymentDate="
				+ paymentDate + ", paymentImpUid=" + paymentImpUid + ", paymentPg=" + paymentPg + ", paymentPayMethod="
				+ paymentPayMethod + ", paymentBuyerEmail=" + paymentBuyerEmail + ", paymentBuyerName="
				+ paymentBuyerName + ", paymentBuyerTel=" + paymentBuyerTel + ", paymentStatus=" + paymentStatus
				+ ", paymentAt=" + paymentAt + ", paymentReceiptUrl=" + paymentReceiptUrl + "]";
	}

}
