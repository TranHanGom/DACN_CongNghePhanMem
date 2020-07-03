package Model;

public class Room {
	String room_id;
	String roomtype_id;
	String room_name;
	String room_price;
	String room_bed;
	String room_size;

	public Room(String room_id) {
		super();
		this.room_id = room_id;
	}

	public Room(String room_id, String roomtype_id, String room_name, String room_price, String room_bed,
			String room_size) {
		super();
		this.room_id = room_id;
		this.roomtype_id = roomtype_id;
		this.room_name = room_name;
		this.room_price = room_price;
		this.room_bed = room_bed;
		this.room_size = room_size;
	}

	public String getRoom_id() {
		return room_id;
	}

	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}

	public String getRoomtype_id() {
		return roomtype_id;
	}

	public void setRoomtype_id(String roomtype_id) {
		this.roomtype_id = roomtype_id;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getRoom_price() {
		return room_price;
	}

	public void setRoom_price(String room_price) {
		this.room_price = room_price;
	}

	public String getRoom_bed() {
		return room_bed;
	}

	public void setRoom_bed(String room_bed) {
		this.room_bed = room_bed;
	}

	public String getRoom_size() {
		return room_size;
	}

	public void setRoom_size(String room_size) {
		this.room_size = room_size;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return room_name;
	}

}
