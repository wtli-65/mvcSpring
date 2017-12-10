package cn.service;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.junit.Test;

import cn.bean.Massage;

public class MessageService {
	@Test
	public void sendMessage() throws EmailException{
		HtmlEmail email = new HtmlEmail();
		email.setHostName(InterfaceConfig.getMailConfigItem("mail.smtp.host"));
		email.setAuthentication(InterfaceConfig.getMailConfigItem("mail.user"), InterfaceConfig.getMailConfigItem("mail.password"));
		email.setFrom(InterfaceConfig.getMailConfigItem("mail.from"), InterfaceConfig.getMailConfigItem("mail.from.name"));
		
		email.addTo("wtli@amarsoft.com",null);
		email.setSubject("带图片和附件的java测试");  
		email.setMsg("hello wellcome");
		email.send();
	}
}
