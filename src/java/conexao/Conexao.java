package conexao;
/**
 * @author Armando
 */
import java.sql.*;
import javax.swing.JOptionPane;

public class Conexao{
    public static Connection Conecta(){
        Connection con = null;
        String driverName = "com.mysql.jdbc.Driver";
        String URL = "jdbc:mysql://localhost:3306/projeto_farmacia";
        String USER = "root";
        String PASS = "";
            try{
                Class.forName(driverName);
                con = DriverManager.getConnection(URL,USER,PASS);
               
            } catch(SQLException | ClassNotFoundException ex){
                
                throw new RuntimeException(ex) ;
                //JOptionPane.showMessageDialog(null, "Erro Conexao 1: " + ex.getMessage(),"Erro Conexao Banco", JOptionPane.ERROR_MESSAGE);
            }
        return con;
    }
}