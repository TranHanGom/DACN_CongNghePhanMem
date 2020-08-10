package com.cnpm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cnpm.model.Roomimage;
import com.cnpm.repository.RoomImageRepository;


@Service
public class RoomImageServiceImpl implements RoomImageService{
	@Autowired
	private RoomImageRepository roomimageRepository;

	@Override
	public Iterable<Roomimage> findAll() {
		// TODO Auto-generated method stub
		return roomimageRepository.findAll();
	}

}
