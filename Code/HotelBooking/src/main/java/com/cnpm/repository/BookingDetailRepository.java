package com.cnpm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cnpm.model.BookingDetail;

public interface BookingDetailRepository extends JpaRepository<BookingDetail, Integer>{

}
