package com.wlp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wlp.api.entity.WlpUser;
import com.wlp.api.service.WlpService;

@Controller()
public class UserController {

	@Autowired
	WlpService wlpService;

	public WlpService getWlpService() {
		return wlpService;
	}

	public void setWlpService(WlpService wlpService) {
		this.wlpService = wlpService;
	}
	
	@RequestMapping(value = "/wlp/login", method = RequestMethod.GET)
	public @ResponseBody WlpUser login(@RequestParam(required = true)  String userName,
			@RequestParam(required = true) String password) {
		try {
			return wlpService.commonLogin(userName, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/wlp/regUser", method = RequestMethod.POST)
	public @ResponseBody WlpUser addUser(WlpUser user) {
		try {
			return wlpService.regUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value = "/wlp/transLogin", method = RequestMethod.GET)
	public @ResponseBody WlpUser transLogin(@RequestParam(required = true)  String userName,
			@RequestParam(required = true) String transPassword) {
		try {
			return wlpService.transLogin(userName, transPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
