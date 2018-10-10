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
import org.springframework.web.bind.annotation.*;
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


	@RequestMapping(value = "/formDeposit/{norek}", method = RequestMethod.GET)
	public ModelAndView formDeposit(@PathVariable("norek") int norekening) {
		Deposit d =  new Deposit();
		d.setNorek(norekening);
		return new ModelAndView("account/account_deposit", "command", d);
	}

	@RequestMapping(value = "/addDeposit", method = RequestMethod.POST)
	public ModelAndView addDeposit(@ModelAttribute("deposit") Deposit deposit,
								   ModelMap model) {
		Account simpen = transaction.simpanUang(deposit);
		return new ModelAndView("account/result_deposit", "simpen", simpen);
	}

	@RequestMapping(value = "/formWithdraw/{norek}", method = RequestMethod.GET)
	public ModelAndView formWithdraw(@PathVariable("norek") int norekening) {
		Withdraw w = new Withdraw();
		w.setNorek(norekening);
		return new ModelAndView("account/account_withdraw", "command", w);
	}

	@RequestMapping(value = "/addWithdraw", method = RequestMethod.POST)
	public ModelAndView addWithdraw(@ModelAttribute("withdraw") Withdraw withdraw,
									ModelMap model) {
		Account tarik = transaction.ambilUang(withdraw);
		return new ModelAndView("account/result_withdraw", "tarik", tarik);
	}

	@RequestMapping(value = "/formTransfer/{norek}", method = RequestMethod.GET)
	public ModelAndView formTransfer(@PathVariable("norek") int norekening) {
		Transfer t = new Transfer();
		t.setNorek(norekening);
		return new ModelAndView("account/account_transfer", "command", t);
	}

	@RequestMapping(value = "/addTransfer", method = RequestMethod.POST)
	public ModelAndView addTransfer(@ModelAttribute("transfer") Transfer transfer,
								   ModelMap model) {
		Account trf = transaction.kirimUang(transfer);
		return new ModelAndView("account/result_transfer", "trf", trf);
	}

}

