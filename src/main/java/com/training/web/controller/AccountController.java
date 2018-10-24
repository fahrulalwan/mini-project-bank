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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value = "/form_add", method = RequestMethod.GET)
	public ModelAndView formAddAccount() {
		return new ModelAndView("account/account_add", "command", new Account());
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView addAccount(@ModelAttribute("account") Account account,
			ModelMap model) {
		accountService.insertAccount(account);
		return new ModelAndView("account/account_result", "command", new Account());
	}


	@RequestMapping(value = "/formDeposit/{account_Number}", method = RequestMethod.GET)
	public ModelAndView formDeposit(@PathVariable("account_Number") int account_Number) {
		Deposit d =  new Deposit();
		d.setAccount_Number(account_Number);
		return new ModelAndView("account/account_deposit", "command", d);
	}

	@RequestMapping(value = "/addDeposit", method = RequestMethod.POST)
	public ModelAndView addDeposit(@ModelAttribute("deposit") Deposit deposit,
								   ModelMap model) {
		Account simpen = transaction.simpanUang(deposit);
		return new ModelAndView("account/result_deposit", "simpen", simpen);
	}

	@RequestMapping(value = "/formWithdraw/{account_Number}", method = RequestMethod.GET)
	public ModelAndView formWithdraw(@PathVariable("account_Number") int account_Number) {
		Withdraw w = new Withdraw();
		w.setAccount_Number(account_Number);
		return new ModelAndView("account/account_withdraw", "command", w);
	}

	@RequestMapping(value = "/addWithdraw", method = RequestMethod.POST)
	public ModelAndView addWithdraw(@ModelAttribute("withdraw") Withdraw withdraw,
									ModelMap model) {
		Account tarik = transaction.ambilUang(withdraw);
		return new ModelAndView("account/result_withdraw", "tarik", tarik);
	}

	@RequestMapping(value = "/formTransfer/{account_Number}", method = RequestMethod.GET)
	public ModelAndView formTransfer(@PathVariable("account_Number") int account_Number) {
		Transfer t = new Transfer();
		t.setAccount_Number(account_Number);
		return new ModelAndView("account/account_transfer", "command", t);
	}

	@RequestMapping(value = "/addTransfer", method = RequestMethod.POST)
	public ModelAndView addTransfer(@ModelAttribute("transfer") Transfer transfer,
								   ModelMap model) {
		Account trf = transaction.kirimUang(transfer);
		return new ModelAndView("account/result_transfer", "trf", trf);
	}

}

