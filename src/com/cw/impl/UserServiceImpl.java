package com.cw.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.cw.mapper.UAndSInfoMapper;
import com.cw.pojo.SalerInfo;
import com.cw.pojo.UserInfo;
import com.cw.service.InfoWithUAndS;
@Repository
@Service
public class UserServiceImpl implements InfoWithUAndS {
	@Autowired
	public UAndSInfoMapper usm;

	@Override
	public void regist(String name, String email, String password) {
		 usm.register(name, email, password);
	}

	@Override
	public UserInfo login(String email, String password) {
		UserInfo user=usm.login(email, password);
		if(user!=null &&user.getPassword().equals(password)){
			return user;
		}
		return null;
		
	}

	@Override
	public int findUser(String email) {
		if(usm.findUser(email)==0){
			return 0;
		}
		return 1;
	}

	
	//Âô¼Ò
	@Override
	public void registSaler(String name, String email, String password) {
		usm.registerSaler(name, email, password);
		
	}

	@Override
	public SalerInfo loginSaler(String email, String password) {
		SalerInfo saler=usm.loginSaler(email, password);
		if(saler!=null &&saler.getPassword().equals(password)){
			return saler;
		}
		return null;
	}

	@Override
	public int findSaler(String email) {
		if(usm.findSaler(email)==0){
			return 0;
		}
		return 1;
	}

	@Override
	public void updateUser(String name,String password) {
		/*System.out.println(user.getEmail());
		System.out.println(user.getName());
		System.out.println(user.getPassword());*/
		 usm.updateUser(name,password);
	}
	

	@Override
	public void updateSaler(String name,String password) {
		usm.updateSaler(name,password);
	}


	

	

	
}
