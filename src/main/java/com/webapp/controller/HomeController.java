package com.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Николай on 08.10.2015.
 */
@Controller
public class HomeController extends BaseController {

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String getHomePage(Model model) {
        return "home";
    }

}
