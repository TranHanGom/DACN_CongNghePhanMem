package com.cnpm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cnpm.utils.*;
import com.cnpm.model.Room;
import com.cnpm.service.RoomService;

@Controller
@RequestMapping("booking")
public class BookingController {
	@Autowired
	private RoomService roomService;
	@RequestMapping(method = RequestMethod.GET)
	    public String index() {
	        return "booking";
	    }
	@RequestMapping(value="book/{roomId}", method = RequestMethod.GET)
    public String buy( @PathVariable("roomId") int roomId,HttpSession session) {
		if (session.getAttribute("stay")==null) {
			List<Item> stay= new ArrayList<Item>();
			stay.add(new Item(roomService.findById(roomId),1));
			session.setAttribute("stay", stay);
			
		}else {
			List<Item> stay=(List<Item>) session.getAttribute("stay");
			int index=exists(roomId, stay);
			if (index==-1) {
				stay.add(new Item(roomService.findById(roomId),1));
			}else {
				int newQuantity=stay.get(index).getQuantity()+1;
				stay.get(index).setQuantity(newQuantity);
			}
		}
	        
        return "redirect:/booking";
    }
	public int exists(int id,List<Item> stay) {
		for (int i = 0; i < stay.size(); i++) {
			if (stay.get(i).getRoom().getRoomId()==id){
				return i;
			}
		}
		return -1;
	}


}
