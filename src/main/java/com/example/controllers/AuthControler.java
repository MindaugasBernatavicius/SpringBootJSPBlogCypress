package com.example.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

/**
 * AuthControler class provides a dummy endpoint which
 * @author  Tom Cat
 * @version 1.0
 * @since   2019-06-17
 */
@Controller
public class AuthControler {
    @RequestMapping(method=RequestMethod.GET, path="/auth")
    public String returnSuccessPage(Model model) {
        return "redirect:post";
    }
}
