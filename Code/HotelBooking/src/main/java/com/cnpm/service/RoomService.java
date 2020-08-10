package com.cnpm.service;

import java.awt.print.Pageable;
import java.util.List;

import org.springframework.data.domain.Page;

import com.cnpm.model.Room;

public interface RoomService {
	public Iterable<Room> findAll();
	
}
