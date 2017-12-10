package cn.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
/**
 * 定义邮件对象
 */
public class Massage {
	
	private String hostName;
	private String subject;
	private String content;
	private String sender;
	private List<InternetAddress> bcc;
	private List<InternetAddress> cc;
	public String getHostName() {
		return hostName;
	}
	public void setHostName(String hostName) {
		this.hostName = hostName;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
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
	public List<InternetAddress> getBcc() {
		return bcc;
	}
	public void setBcc(List<String> bcc) {
		List<InternetAddress> tempList = new ArrayList<InternetAddress>();
		for(int i=0;i<bcc.size();i++){
			try {
				tempList.add(new InternetAddress(bcc.get(i)));
			} catch (AddressException e) {
				e.printStackTrace();
			}
			this.bcc = tempList;
		}
		
	}
	public List<InternetAddress> getCc() {
		return cc;
	}
	public void setCc(List<String> cc) {
		List<InternetAddress> tempList = new ArrayList<InternetAddress>();
		for(int i=0;i<cc.size();i++){
			try {
				tempList.add(new InternetAddress(cc.get(i)));
			} catch (AddressException e) {
				e.printStackTrace();
			}
			this.cc = tempList;
		}
	}
	
}
