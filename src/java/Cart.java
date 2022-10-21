
import java.sql.Connection;
import java.sql.DriverManager;


public class Cart extends Product{
 
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1","app","app");
	private int quantity;

	public Cart() {
	}


	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}