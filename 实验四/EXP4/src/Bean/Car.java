package Bean;

public class Car {
	private String color;
	private boolean isAir;
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public boolean getisAir() {
		return isAir;
	}
	public void setisAir(boolean isAir) {
		this.isAir = isAir;
	}
	public Car(String color, boolean isAir) {
		super();
		this.color = color;
		this.isAir = isAir;
	}
	public Car() {
		super();
		// TODO Auto-generated constructor stub
	}
}
