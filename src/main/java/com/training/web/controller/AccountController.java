package com.training.web.controller;

import com.training.core.domain.Account;
import com.training.core.model.Deposit;
import com.training.core.model.Transfer;
import com.training.core.model.Withdraw;
import com.training.core.service.AccountService;
import com.training.core.service.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/account")
public class AccountController {
	
	@Autowired
	private AccountService accountService;

	@Autowired
	private Transaction transaction;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView getAccount() {
		return new ModelAndView("account/account_list", "list", accountService.getAccount());
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String getAccount(@RequestParam("id") Integer id,
			ModelMap model) {
		model.addAttribute("account", accountService.getAccount(id));	
		Account x = accountService.getAccount(id);
		return "account/account_view";
	}

	@RequestMapping(value = "/formDeposit", method = RequestMethod.GET)
	public ModelAndView formDeposit() {
		return new ModelAndView("account/account_deposit", "deposit", new Account());
	}

	@RequestMapping(value = "/formWithdraw", method = RequestMethod.GET)
	public ModelAndView formWithdraw() {
		return new ModelAndView("account/account_withdraw", "withdraw", new Account());
	}

	@RequestMapping(value = "/formTransfer", method = RequestMethod.GET)
	public ModelAndView formTransfer() {
		return new ModelAndView("account/account_transfer", "transfer", new Account());
	}


	@RequestMapping(value = "/addDeposit", method = RequestMethod.POST)
	public ModelAndView addDeposit(@ModelAttribute("deposit") Deposit deposit,
			ModelMap model) {
		Account simpen = transaction.simpanUang(deposit);
		return new ModelAndView("account/result_deposit", "spn", simpen);
	}

	@RequestMapping(value = "/addWithdraw", method = RequestMethod.POST)
	public ModelAndView addWithdraw(@ModelAttribute("withdraw") Withdraw withdraw,
								   ModelMap model) {
		Account tarik = (Account) transaction.ambilUang(withdraw);
		return new ModelAndView("account/result_withdraw", "nrk", tarik);
	}
	@RequestMapping(value = "/addTransfer", method = RequestMethod.POST)
	public ModelAndView addTransfer(@ModelAttribute("transfer") Transfer transfer,
								   ModelMap model) {
		Account trf = transaction.kirimUang(transfer);
		return new ModelAndView("account/result_transfer", "trf", trf);
	}

}

