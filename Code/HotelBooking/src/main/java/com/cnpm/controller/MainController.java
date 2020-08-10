package com.cnpm.controller;

import java.awt.print.Pageable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.cnpm.model.Room;
import com.cnpm.repository.RoomRepository;
import com.cnpm.service.RoomService;
import com.cnpm.service.RoomTypeService;
@Controller
public class MainController {
	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private RoomService roomService;


    @GetMapping("/")
    public String root() {
        return "/index";
    }
    @GetMapping("/room")
    public String list(Model model ) {
        model.addAttribute("roomtypes", roomTypeService.findAll());
        model.addAttribute("rooms", roomService.findAll());
        
       
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
