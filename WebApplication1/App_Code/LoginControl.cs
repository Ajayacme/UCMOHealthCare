using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace UCMOHealthCare
{
    /// <summary>
    /// Summary description for LoginControl
    /// </summary>
    public class LoginControl
    {
	
        public bool verfiyLogin(string uid,string pwd)
        {
            string connectionString = null;
            connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from login where userid =@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", uid);
            cmd.Parameters.AddWithValue("@password", pwd);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
                return true;
            else
                return false;
        }
            
        
    }
}


