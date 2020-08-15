package com.cnpm.model;
// Generated Aug 11, 2020 2:59:28 PM by Hibernate Tools 5.1.10.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * BookingDetail generated by hbm2java
 */
@Entity
@Table(name = "booking_detail", catalog = "onlinehotel")
public class BookingDetail implements java.io.Serializable {

	private int id;
	private Booking booking;
	private Room room;
	private int unitPrice;
	private int quantity;

	public BookingDetail() {
	}

	public BookingDetail(int id, Booking booking, Room room, int unitPrice, int quantity) {
		this.id = id;
		this.booking = booking;
		this.room = room;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "booking_id", nullable = false)
	public Booking getBooking() {
		return this.booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "room_id", nullable = false)
	public Room getRoom() {
		return this.room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	@Column(name = "unit_price", nullable = false)
	public int getUnitPrice() {
		return this.unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	@Column(name = "quantity", nullable = false)
	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}