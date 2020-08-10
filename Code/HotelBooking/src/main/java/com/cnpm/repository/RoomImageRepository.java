package com.cnpm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cnpm.model.Roomimage;

@Repository
public interface RoomImageRepository extends JpaRepository<Roomimage, Integer>{
	
}
