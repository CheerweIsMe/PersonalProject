package com.cw.service;

import org.apache.ibatis.annotations.Param;

import com.cw.pojo.SalerInfo;
import com.cw.pojo.UserInfo;

public interface InfoWithUAndS {
	//买家
		//用户注册
		void regist(String name,String email,String password);
		//用户登录
		UserInfo login(String  email,String password);
		//验证
		int findUser(String email);
		//修改信息
		void updateUser( String name,String password);
	
	//卖家	
		//注册
		void registSaler(String name,String email,String password);
		//登陆
		SalerInfo loginSaler(String  email,String password);
		//验证
		int findSaler(String email);
		//修改信息
		void updateSaler( String name,String password);
}
