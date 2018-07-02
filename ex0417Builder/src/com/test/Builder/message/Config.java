package com.test.Builder.message;

public class Config {
	
	private static String appid = "send-sns";
	private static String apikey = "db5a52c0723211e89d340cc47a1fcfae";
	private String sender;
	private String content;
	private String receiver;
	
	public Config() {
		super();
	}
	
	public Config(String content, String sender, String receiver) {
		this.content = content;
		this.sender = sender;
		this.receiver = receiver;
	}

	public String getAppid() {
		return appid;
	}

	public void setAppid(String appid) {
		this.appid = appid;
	}

	public String getApikey() {
		return apikey;
	}

	public void setApikey(String apikey) {
		this.apikey = apikey;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	
	
}