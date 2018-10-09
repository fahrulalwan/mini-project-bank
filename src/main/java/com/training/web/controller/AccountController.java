package com.training.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.training.core.domain.Account;
import com.training.core.service.AccountService;

@Controller
@RequestMapping(value = "/account")
public class AccountController {
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView getAccount() {
		return new ModelAndView("account/account_list", "list", accountService.getAccount());
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String getAccount(@RequestParam("id") String id,
			ModelMap model) {
		model.addAttribute("account", accountService.getAccount(id));	
		Account x = accountService.getAccount(id);
		return "account/account_view";
	}

	@RequestMapping(value = "/formDeposit", method = RequestMethod.GET)
	public ModelAndView formDeposit() {
		return new ModelAndView("account/account_deposit", "command", new Account());
	}

	@RequestMapping(value = "/formWithdraw", method = RequestMethod.GET)
	public ModelAndView formWithdraw() {
		return new ModelAndView("account/account_withdraw", "command", new Account());
	}

	@RequestMapping(value = "/formTransfer", method = RequestMethod.GET)
	public ModelAndView formTransfer() {
		return new ModelAndView("account/account_transfer", "command", new Account());
	}


	@RequestMapping(value = "/addDeposit", method = RequestMethod.POST)
	public ModelAndView addDeposit(@ModelAttribute("account") Account account,
			ModelMap model) {
		accountService.insertAccount(account);
		return new ModelAndView("account/result_deposit", "command", new Account());
	}

	@RequestMapping(value = "/addWithdraw", method = RequestMethod.POST)
	public ModelAndView addWithdraw(@ModelAttribute("account") Account account,
								   ModelMap model) {
		accountService.insertAccount(account);
		return new ModelAndView("account/result_withdraw", "command", new Account());
	}
	@RequestMapping(value = "/addTransfer", method = RequestMethod.POST)
	public ModelAndView addTransfer(@ModelAttribute("account") Account account,
								   ModelMap model) {
		accountService.insertAccount(account);
		return new ModelAndView("account/result_transfer", "command", new Account());
	}

}

