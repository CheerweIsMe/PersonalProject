package com.cw.service;

import org.apache.ibatis.annotations.Param;

import com.cw.pojo.SalerInfo;
import com.cw.pojo.UserInfo;

public interface InfoWithUAndS {
	//���
		//�û�ע��
		void regist(String name,String email,String password);
		//�û���¼
		UserInfo login(String  email,String password);
		//��֤
		int findUser(String email);
		//�޸���Ϣ
		void updateUser( String name,String password);
	
	//����	
		//ע��
		void registSaler(String name,String email,String password);
		//��½
		SalerInfo loginSaler(String  email,String password);
		//��֤
		int findSaler(String email);
		//�޸���Ϣ
		void updateSaler( String name,String password);
}
