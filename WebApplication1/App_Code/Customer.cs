using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace UCMOHealthCare
{
    /// <summary>
    /// Summary description for Customer
    /// </summary>
    public class Customer
    {
        protected String CustomerID, Lname, Fname, Address, Email, Phone;
        public Customer(string CustID)
        {
            this.CustomerID = CustID;
            string connectionString = null;
            connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("select lastname,firstname,address,email,phone from customer_details where cid =@username ", con);
            cmd.Parameters.AddWithValue("@username", CustID);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                this.Lname = Convert.ToString(ds.Tables[0].Rows[0][0]);
                this.Fname = Convert.ToString(ds.Tables[0].Rows[0][1]);
                this.Address = Convert.ToString(ds.Tables[0].Rows[0][2]);
                this.Email = Convert.ToString(ds.Tables[0].Rows[0][3]);
                this.Phone = Convert.ToString(ds.Tables[0].Rows[0][4]);
            }
            con.Close();     
        }
        public string getLname()
        {
            return this.Lname;
        }
        public string getFname()
        {
            return this.Fname;
        }
        public string getAddress()
        {
            return this.Address;
        }
        public string getEmail()
        {
            return this.Email;
        }
        public string getPhone()
        {
            return this.Phone;
        }
    }
}