package cn.service;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Properties;


/**
 * 接口配置数据管理
 * @author EX-YANGSONG001
 *
 */
public class InterfaceConfig{

	public static final String MESSAGE_RESOURCE_BASE = "config";
	
	/**
	 * EOA接口配置文件
	 */
	public static String EOA_CONFIG_FILE = "EOASetting.properties";
	/**
	 * 影像接口配置文件
	 */
	public static String IM_CONFIG_FILE = "IMClient.properties";
	/**
	 * 邮件接口配置文件
	 */
	public static String MAIL_CONFIG_FILE = "MailClient.properties";
	/**
	 * 投管中心接口配置文件
	 */
	public static String NCMS_CONFIG_FILE = "NcmsSetting.properties";
	/**
	 * UM/SSO接口配置文件
	 */
	public static String UMSSO_CONFIG_FILE = "UMSSO.properties";
	/**
	 * 公共接口-配置
	 */
	public static String PUB_INF_FILE = "pubinf.properties";
	
	
	/**
	 * MFA短信验证配置文件
	 */
	public static String mfa_api = "mfa-api.properties";

	/**
	 * 短信验证选择接口配置文件
	 */
	public static String migrate = "migrate.properties";


	private static Properties eoaProperties = null;
	private static Properties imProperties = null;
	private static Properties mailProperties = null;
	private static Properties ncmsProperties = null;
	private static Properties umssoProperties = null;
	private static Properties pubinfProperties = null;
	private static Properties mfaProperties = null;
	private static Properties migrateProperties = null;
	
	
	private static Properties getProperties(String file){
		//根据客户要求，需要分离配置文件到独立的目录中，配置文件目录会被添加到CLASSPATH中
		//因此，先直接去读配置文件，如果读不到，则最终到配置目录config下去读
		InputStream in = InterfaceConfig.class.getClassLoader().getResourceAsStream(file);
		Properties properties = new Properties();
		try {
			properties.load(new InputStreamReader(in,"utf-8"));
		} catch (IOException e) {
		}finally{
			if(in!=null)
				try {
					in.close();
				} catch (IOException e) {
				}
		}
		return properties;
	}
	/**
	 * EOA配置项获取
	 * @param name
	 * @return
	 */
	public static String getEOAConfigItem(String name){
		if(eoaProperties==null)eoaProperties=getProperties(EOA_CONFIG_FILE);
		return eoaProperties.getProperty(name);
	}
	
	/**
	 * 获取IM配置数据
	 * @param name
	 * @return
	 */
	public static String getIMConfigItem(String name){
		if(imProperties==null)imProperties=getProperties(IM_CONFIG_FILE);
		return imProperties.getProperty(name);		
	}
	
	/**
	 * 邮件配置数据
	 * @param name
	 * @return
	 */
	public static String getMailConfigItem(String name){
		if(mailProperties==null)mailProperties=getProperties(MAIL_CONFIG_FILE);
		return mailProperties.getProperty(name);		
	}
	
	/**
	 * NCMS配置数据
	 * @param name
	 * @return
	 */
	public static String getNCMSConfigItem(String name){
		if(ncmsProperties==null)ncmsProperties=getProperties(NCMS_CONFIG_FILE);
		return ncmsProperties.getProperty(name);			
	}
	/**
	 * UMSSO配置数据
	 * @param name
	 * @return
	 */
	public static String getUMSSOConfigItem(String name){
		if(umssoProperties==null)umssoProperties=getProperties(UMSSO_CONFIG_FILE);
		return umssoProperties.getProperty(name);	
	}
	
	/**
	 * 读取公共配置文件
	 * @param name
	 * @return
	 */
	public static String getPubConfItem(String name){
		return getPubConfItem(name, "");
	}
	
	/**
	 * MFA短信配置文件
	 * @param name
	 * @return
	 */
	public static String getMfaApiConfItem(String name){
		return getMfaApiConfItem(name, "");
	}
	
	/**
	 * 短信接口选择配置文件
	 * @param name
	 * @return
	 */
	public static String getMigrateConfItem(String name){
		return getMigrateConfItem(name, "");
	}
	/**
	 * 读取短信配置文件
	 * @param name
	 * @return
	 */
	public static String getMfaApiConfItem(String name, String defVal){
		if(mfaProperties==null)mfaProperties=getProperties(mfa_api);
		return mfaProperties.getProperty(name, defVal);	
	}
	/**
	 * 读取短信选择接口配置文件
	 * @param name
	 * @return
	 */
	public static String getMigrateConfItem(String name, String defVal){
		if(migrateProperties==null)migrateProperties=getProperties(migrate);
		return migrateProperties.getProperty(name, defVal);	
	}
	
	/**
	 * 读取公共配置文件
	 * @param name
	 * @return
	 */
	public static String getPubConfItem(String name, String defVal){
		if(pubinfProperties==null)pubinfProperties=getProperties(PUB_INF_FILE);
		return pubinfProperties.getProperty(name, defVal);	
	}
	
	/**
	 * 获取系统虚拟用户编号
	 * @param name
	 * @return
	 */
	public static String getSysUserID(){
		return getPubConfItem("prms.userID", "V_PA004_NTS_PRMS");
	}
	/**
	 * 获取系统虚拟用户编号
	 * @param name
	 * @return
	 */
	public static String getSysUserIDApp(){
		return getPubConfItem("prmsApp.userID", "V_PA004_NTS_PRMS");
	}
	/**
	 * 获取系统虚拟用户名
	 * @param name
	 * @return
	 */
	public static String getSysUserName(){
		return getPubConfItem("prms.userName", "NTS-PRMS");
	}
	
	/**
	 * 获取系统虚拟用户名
	 * @param name
	 * @return
	 */
	public static String getSysSimpleName(){
		return getPubConfItem("prms.simpleName", "PRMS");
	}
	
	/**
	 * 获取相关密码
	 * @param name
	 * @return
	 */
	public static String getSysVisitUrl(){
		return getPubConfItem("prms.visit.url", "http://nts-prms.paic.com.cn/PRMS");
	}
	
	/**
	 * 获取相关密码
	 * @param name
	 * @return
	 */
	public static String getDBUserID(){
		return getPubConfItem("database.user");
	}
	
}
