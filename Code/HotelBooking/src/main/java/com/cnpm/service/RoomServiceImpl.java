package com.cnpm.service;

import java.awt.print.Pageable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.cnpm.model.Room;
import com.cnpm.repository.RoomRepository;
@Service
public class RoomServiceImpl implements RoomService{
	@Autowired
	private RoomRepository roomRepository;

	@Override
	public Iterable<Room> findAll() {
		// TODO Auto-generated method stub
		return roomRepository.findAll();
	}

	

	
}
