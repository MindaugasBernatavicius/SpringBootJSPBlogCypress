package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Application class, the main entry point of this Blog application
 * @author  Tom Cat
 * @version 1.0
 * @since   2019-06-17
 */
@SpringBootApplication
@Controller
public class Application extends SpringBootServletInitializer {

    // @RequestMapping("/")
    // Map<String, String> home() {
    //     return Collections.singletonMap("greeting", "Hello world!");
    // }

    // @GetMapping("/")
    // public String root(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
    //     model.addAttribute("name", name);
    //     return "index";
    // }

    @GetMapping("/")
    public String root(Model model) {
        return "index";
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Application.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}