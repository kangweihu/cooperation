package com.wlp.core.impl;

import java.util.List;

import com.wlp.api.entity.WlpUser;
import com.wlp.api.service.WlpService;

public class WlpServiceImpl implements WlpService {

	@Override
	public WlpUser commonLogin(String email, String password) {
		WlpUser user = getUserByEmail(email);
		if(user != null && password.equals(user.getLoginPassword())){
			return user;
		}
		return null;
	}

	@Override
	public WlpUser transLogin(String email, String transPassword) {
		WlpUser user = getUserByEmail(email);
		if(user != null && transPassword.equals(user.getTransPassword())){
			return user;
		}
		return null;
	}

	@Override
	public WlpUser regUser(WlpUser user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<WlpUser> getMyTeamUsers(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WlpUser getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
