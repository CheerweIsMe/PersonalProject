package com.cw.mapper;


import org.apache.ibatis.annotations.Param;

import com.cw.pojo.SalerInfo;
import com.cw.pojo.UserInfo;
public interface UAndSInfoMapper {
		//Âò¼Ò
		public void register(@Param("name")String name,@Param("email")String email,@Param("password")String password);
		 public UserInfo login(@Param("email")String email,@Param("password")String password);  
		 public int findUser(@Param("email")String email);
		 public void updateUser(@Param("name")String name,@Param("password")String password);
		
		 //Âô¼Ò
		 public void registerSaler(@Param("name")String name,@Param("email")String email,@Param("password")String password);
		 public SalerInfo loginSaler(@Param("email")String email,@Param("password")String password);  
		 public int findSaler(@Param("email")String email);
		 public void updateSaler(@Param("name")String name,@Param("password")String password);
}
