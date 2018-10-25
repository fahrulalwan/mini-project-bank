package com.training.web.controller;

import com.training.core.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/history")
public class HistoryController {

    @Autowired
    private HistoryService historyService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView getHistory() {
        return new ModelAndView("history/history", "list", historyService.getHistory());
    }



}
