package com.cnpm.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class MainController {

    @GetMapping("/")
    public String root() {
        return "/index";
    }
    @GetMapping("/room")
    public String room() {
        return "room";
    }
    @GetMapping("/roomdetail")
    public String roomdetail() {
        return "roomdetail";
    }
    @GetMapping("/login")
    public String login() {
        return "login";
    }
    @GetMapping("/register")
    public String register() {
        return "register";
    }
    @GetMapping("/booking")
    public String booking() {
        return "booking";
    }
    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }
}
