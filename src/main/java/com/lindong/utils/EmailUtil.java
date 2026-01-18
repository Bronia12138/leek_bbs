package com.lindong.utils;

import com.lindong.exception.CustomException;
import com.lindong.exception.ResultCode;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

import java.awt.image.BufferedImage;
import java.util.Random;

public class EmailUtil {

    private static final String HOST = "smtp.qq.com";
    private static final String CHARSET = "utf-8";
    private static final String FROM_EMAIL = "2097911254@qq.com";
    private static final String FROM_NAME = "test";
    private static final String AUTH_USERNAME = "2097911254@qq.com";
    private static final String AUTH_PASSWORD = "vosnxtegbgorbaib"; // 授权码

    private static final String TEXT = "abcdefghijklmnopqrstuvwxyz"; // 验证码字符集

    // 生成验证码
    public static String verifyCode() {
        StringBuffer sb = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < 6; i++) {
            sb.append(TEXT.charAt(random.nextInt(TEXT.length())));
        }
        return sb.toString();
    }

    // 发送邮件
    public static String sendEmail(String emailUser) {
        String code = verifyCode();
        HtmlEmail email = new HtmlEmail(); // 每次发送邮件时创建新的 HtmlEmail 实例

        try {
            // 设置SMTP服务器和SSL
            email.setSSLOnConnect(true);  // 启用 SSL
            email.setHostName(HOST);
            email.setSmtpPort(465);  // 使用端口465进行加密连接
            email.setCharset(CHARSET);

            // 设置收件人
            email.addTo(emailUser);
            // 设置发件人
            email.setFrom(FROM_EMAIL, FROM_NAME);
            // 设置认证
            email.setAuthentication(AUTH_USERNAME, AUTH_PASSWORD);
            // 设置邮件主题
            email.setSubject("邮箱验证码");
            // 设置邮件内容（HTML格式）
            email.setMsg("<h2>修改信息的验证码为:" + "<span style='font-size:22px;color:blue;letter-spacing: 4px;'><u>" + code + "</u></span></h2>");
            // 启用调试模式，查看发送过程
            email.setDebug(true);
            // 发送邮件
            email.send();
        } catch (EmailException e) {
            // 发送失败时抛出异常
            throw new CustomException(ResultCode.SEND_FAIL);
        }
        return code;
    }

    public static void main(String[] args) {
        // 可以在此测试邮件发送
        String emailCode = sendEmail("3540826767@qq.com");
        System.out.println("验证码: " + emailCode);
    }
}

