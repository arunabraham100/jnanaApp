package serve;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.xml.bind.annotation.*;
import java.util.*;
import entities.*;
import java.sql.*;

@Path("product")
public class ProductRest {
	
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost:3306/star_schema";
	   
	//  Database credentials
		   static final String USER = "root";
		   static final String PASS = "root";

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/findall")
	public List<Product> findAll(){
		 Connection conn = null;
		   Statement stmt = null;
		
		List<Product> result=new ArrayList<Product>();
		/*result.add(new Product("A01", "Racquet", 7500.00, 10));
		result.add(new Product("A02", "Racquet1", 4500.00, 15));
		result.add(new Product("A03", "Racquet2", 3500.00, 5));
		result.add(new Product("A04", "Racquet3", 8500.00, 20));*/
		
		 
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();
		      String sql;
		      System.out.println(1);
		      sql = "SELECT * FROM product";
		     // String sql1 = "INSERT INTO USERS VALUES ('2','Rafa','Benitez','44')";
		      ResultSet rs = stmt.executeQuery(sql);//STEP 5: Extract data from result set
		      System.out.println(2);
		      while(rs.next()){
		    	  Product product=new Product();
		    	 
		    	  product.setId(rs.getString("id"));
		    	  product.setName(rs.getString("name"));
		    	  product.setPrice(rs.getDouble("price"));
		    	  product.setQuality(rs.getInt("quality"));
		    	 
		    	  result.add(product);
		       }
		       //STEP 6: Clean-up environment
		       rs.close();
		       stmt.close();
		       conn.close();
		    }catch(SQLException se){//Handle errors for JDBC
		        se.printStackTrace();
		    }catch(Exception e){
		       //Handle errors for Class.forName
		       e.printStackTrace();
		    }finally{
		       //finally block used to close resources
		       try{
		          if(stmt!=null)
		             stmt.close();
		       }catch(SQLException se2){
		       }// nothing we can do
		       try{
		          if(conn!=null)
		             conn.close();
		       }catch(SQLException se){
		          se.printStackTrace();
		       }//end finally try
		    }//end try
		    System.out.println("Goodbye!");
		
		return result;
		
		
	}
	
}
