package com.zjut.oa.tool;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class MailTool {

	private static final Log log = LogFactory.getLog(MailTool.class);

	private static final MailTool INSTANCE = new MailTool();

	// 邮件必要参数
	private String host;
	private String username;
	private String password;

	private Session session;
	private Message message;

	private MailTool() {
		// 加载配置
		loadProperties();
		// 完成初始配置
		configurate();
		log.info("username:" + username + ",passsword:" + password
				+ ". in construct");
	}

	public static final MailTool getInstance() {
		return INSTANCE;
	}

	public void sendText(Mail mail) throws MessagingException {
		if (preCheck(mail)) {

			message.setContent(mail.getContent(), "text/plain;charset=utf-8");
			message.setSubject(mail.getSubject());
			message.setFrom(mail.getFrom());
			// 添加收件人、抄送人、密送人
			setRecipients(mail);
			message.setSentDate(new Date());

			// 发送邮件
			Transport.send(message);
			log.info("Text Mail send Success.");
		} else {
			log.info("邮件对象不完整，请确认");
		}
	}

	public String loadMailTemplate(String filename) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(filename));
		StringBuilder html = new StringBuilder();
		String line = null;
		while ((line = br.readLine()) != null) {
			html.append(line);
		}
		br.close();
		return html.toString();
	}

	public void sendHtml(Mail mail) throws MessagingException {
		if (preCheck(mail)) {

			message.setSubject(mail.getSubject());
			message.setFrom(mail.getFrom());
			// 添加收件人、抄送人、密送人
			setRecipients(mail);
			message.setSentDate(new Date());

			// 添加邮件内容
			Multipart mp = new MimeMultipart();
			BodyPart mdp_html = new MimeBodyPart();
			mdp_html.setContent(mail.getContent(), "text/html;charset=utf-8");
			mp.addBodyPart(mdp_html);

			message.setContent(mp);

			// 发送邮件
			Transport.send(message);
			log.info("HTML Mail send Success.");
		} else {
			log.info("邮件对象不完整，请确认");
		}
	}

	private void loadProperties() {
		Properties prop = PropertiesTool.loadProperties("mail.properties");
		host = prop.getProperty("mail.host");
		username = prop.getProperty("mail.host.username");
		password = prop.getProperty("mail.host.password");

		log.info("Param [host]:[" + host + "]");
		log.info("Param [username]:[" + username + "]");
		log.info("Param [password]:[" + password + "]");
	}

	private void configurate() {
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		session = Session.getDefaultInstance(props, new EmailAutherticator());
		message = new MimeMessage(session);
	}

	/**
	 * 预检查邮件必要信息
	 */
	private boolean preCheck(Mail mail) {
		if (StringUtils.isBlank(mail.getSubject())) {
			log.info("邮件主题不能为空");
			return false;
		}
		if (mail.getFrom() == null) {
			log.info("邮件发送人不能为空");
			return false;
		}
		if (mail.getTo() == null) {
			log.info("邮件收件人不能为空");
			return false;
		}
		if (StringUtils.isBlank(mail.getContent())) {
			log.info("邮件内容不能为空");
			return false;
		}
		return true;
	}

	private void setRecipients(Mail mail) throws MessagingException {
		Address[] to = mail.getTo();
		Address[] cc = mail.getCc();
		Address[] bcc = mail.getBcc();
		// 收件人
		if (to.length == 1) {
			message.setRecipient(RecipientType.TO, to[0]);
		} else {
			message.setRecipients(RecipientType.TO, to);
		}
		// 抄送人
		if (cc != null && cc.length == 1) {
			message.setRecipient(RecipientType.CC, cc[0]);
		} else if (cc != null && cc.length > 1) {
			message.setRecipients(RecipientType.CC, cc);
		}
		// 密送人
		if (bcc != null && bcc.length == 1) {
			message.setRecipient(RecipientType.BCC, bcc[0]);
		} else if (bcc != null && bcc.length > 1) {
			message.setRecipients(RecipientType.BCC, bcc);
		}
	}

	private class EmailAutherticator extends Authenticator {
		public EmailAutherticator() {
			super();
		}

		public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(username, password);
		}
	}

	public String getUsername() {
		return username;
	}

	public static void main(String args[]) throws MessagingException,
			IOException {
		Mail mail = new Mail();
		mail.setSubject("通过邮件发送工具类设置的主题");
		mail.setFrom("qingtian16265@163.com");
		mail.setTo(new String[] { "549652838@qq.com" });
		// mail.setContent("这是一个简单的文本信息邮件");
		// MailTool.getInstance().sendText(mail);

		String htmlStr = MailTool.getInstance().loadMailTemplate("res/template.html");

		Object[] obj = new Object[] { "这是HTML的标题",
				"http://www.google.com.hk/intl/zh-CN/images/logo_cn.png",
				"http://www.google.com", "谷歌" };
		htmlStr = MessageFormat.format(htmlStr, obj);

		mail.setContent(htmlStr);
		MailTool.getInstance().sendHtml(mail);

	}
}
