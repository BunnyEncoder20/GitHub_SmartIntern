/*
    JDBC - Java DataBase Connect 
    --------------------------
    JDBC does not run on like a plain old .java file. You'll have to build a Java Project
    ctrl+shift+P > create Java Project 
 */


public class App {
    public static void main(String[] args) throws Exception {
        
        // Loading the driver dynamically at run time 
        // JDBC Driver is in the Library Folder
        CLass.forName("com.mysql.cj.jdbc.Driver");

        // Connection parameters 
        String url = "jdbc.mysql://localhost:3307/"; //Note localhost:3307 specifies the port in which MySQL is running on my laptop Defualt port is 3306
        String user = "root";
        String pwd = "";

        // Creating the database 
        // first we need a connection to the MySQL server and 
        // Then we need a statement to execute MySQL commands/qureies
        try(Connection conn = DriverManager.getConnection(url,user,pwd); Statement stmt = conn.createStatement();){
            String query = "CREATE DATABASE IF NOT EXISTS sampledb";
            stmt.executeUpdate(query);
            System.out.println("DataBase created successfully !!!");
        }
        catch(SQLException e){
            System.out.println(e.getMessage());
        }

        // Once DB is created, we should connect directly to it.
        // we'll have to include the name of the DB in the end of the url

        Connection conn = DriverManager.getConnection(url+"sampledb",user,pwd);
        Statement stmt = conn.createStatement();
        
        // Once Connection is made, we can do all te MySQL commands inside the try block
        try{
            stmt.executeUpdate("CREATE TABLE IF NOT EXISTS emp ( id INT NOT NULL AUTO_INCREMENT, name VARCHAR(255), age INT, PRIMARY KEY(id))") ;
            System.out.println("Table Created...");

            int rows = stmt.executeUpdate("INSERT INTO emp(name,age) VALUES ('Bunny',10),('Soma',10),('Tarun',8)");
            System.out.println(rows+" inserted into table...");
        } 
        catch (SQLException e){
            System.out.println(e.getMessage());
        }

        try(ResultSet rs = stmt.executeQuery("SELECT * FROM emp")){
            while(rs.next()){
                int id = rs.getInt("id"); String name = rs.getString("name"); int age = rs.getInt("age");
                System.out.println("ID : "+id+"\tName : "+name+"\tAge : "+age);
            }
        } catch (SQLException e){
            System.out.println(e.getMessage());
        }

        try{
            int rows = stmt.executeUpdate("UPDATE emp SET age=20 where name='soma' ");
            System.out.println(rows+" number of rows updated...");
            rows = stmt.executeUpdate("DELETE FROM emp WHERE name = 'Bunny' ");
            System.out.println(rows+" number of rows updated...");
        } catch (SQLException e){ System.out.println(e.getMessage());}

        try(ResultSet rs = stmt.executeQuery("SELECT * FROM emp WHERE age=20")){
            while(rs.next()){
                int id = rs.getInt("id"); String name = rs.getString("name"); int age = rs.getInt("age");
                System.out.println("ID : "+id+"\tName : "+name+"\tAge : "+age);
            }
        } catch (SQLException e){
            System.out.println(e.getMessage());
        }

        try{
            stmt.executeUpdate("DROP DATABASE IF EXISTS jdbc_db1");
            System.out.println("Dropped DB...");
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }

        conn.close() ;

    }
}
