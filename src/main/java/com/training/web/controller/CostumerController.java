package com.training.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.training.core.domain.Costumer;
import com.training.core.service.CostumerService;

@Controller
@RequestMapping(value = "/costumer")
public class CostumerController {
	
	@Autowired
	private CostumerService costumerService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView getCostumer() {
		return new ModelAndView("costumer/costumer_list", "list", costumerService.getCostumer());
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String getCostumer(@RequestParam("id") String id,
			ModelMap model) {
		model.addAttribute("costumer", costumerService.getCostumer(id));	
		Costumer x = costumerService.getCostumer(id);
		return "costumer/costumer_view";
	}

	@RequestMapping(value = "/form_add", method = RequestMethod.GET)
	public ModelAndView formAddCostumer() {
		return new ModelAndView("costumer/costumer_add", "command", new Costumer());
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView addCostumer(@ModelAttribute("costumer") Costumer costumer,
			ModelMap model) {
		costumerService.insertCostumer(costumer);
		return new ModelAndView("costumer/costumer_result", "command", new Costumer()); 
	}
	
	@RequestMapping(value = "/form_edit", method = RequestMethod.GET)
	public ModelAndView formEditCostumer(@RequestParam("id") String id) {
		return new ModelAndView("costumer/costumer_edit", "command", costumerService.getCostumer(id));	
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public RedirectView editCostumer(@ModelAttribute("costumer") Costumer costumer,
			ModelMap model) {
		costumerService.editCostumer(costumer);
		return new RedirectView("../costumer/list");
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public RedirectView deleteCostumer(@RequestParam("id") String id,
			ModelMap model) {
		costumerService.removeCostumer(id);
		return new RedirectView("../costumer/list");
	}
}

