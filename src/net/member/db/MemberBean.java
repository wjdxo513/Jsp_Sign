package net.member.db;

public class MemberBean {
	String Id; //MemberBean(Dto)
	String Pw;
	String Name;
	String Phone;
	int Master; //관리자 여부
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getPw() {
		return Pw;
	}
	public void setPw(String pw) {
		Pw = pw;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public int getMaster() {
		return Master;
	}
	public void setMaster(int master) {
		Master = master;
	}
}
