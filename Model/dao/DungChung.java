package dao;
import java.sql.Connection;
import java.sql.DriverManager;
public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    	System.out.println("Da xac dinh HQTCSDL");
    	//B2: Ket noi vao csdl
    	String url="jdbc:sqlserver://localhost:1433;databaseName=QlHang;user=sa; password=123456789";
    	cn=DriverManager.getConnection(url);
    	System.out.println("Da ket noi");
	}
}
public class DungChung {
    private static DungChung obj;
    private DungChung() {}
    public static DungChung getConnect() {
        if(obj == null) {
            obj = new DungChung();
        }
        return  obj;
    }
    public static KetNoi cn = null;
    public  KetNoi Connect() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=QlHang;user=sa; password=123456789";
            cn = DriverManager.getKetNoi(url);
            System.out.println("Da xac dinh HQTCSDL");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cnn;
    }

}
