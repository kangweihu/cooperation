package com.wlp.api.service;

import java.util.List;

import com.wlp.api.entity.WlpUser;

public interface WlpService {
	public WlpUser commonLogin(String email, String password);
	public WlpUser transLogin(String email, String transPassword);
	public WlpUser regUser(WlpUser user);
	public List<WlpUser> getMyTeamUsers(String email);
	public WlpUser getUserByEmail(String email);
}
