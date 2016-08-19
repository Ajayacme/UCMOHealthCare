using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace UCMOHealthCare
{
    /// <summary>
    /// Summary description for Agent
    /// </summary>
    public class Agent
    {
        string AgentID, Lname, Fname, Address, Email, Phone;
        public Agent(string AID)
        {
            this.AgentID = AID;
            string connectionString = null;
            connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select lastname,firstname,address,email,phone from agent_details where aid =@username ", con);
            cmd.Parameters.AddWithValue("@username", AgentID);
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
        public void setEmail(string EmailId)
        {
            this.Email = EmailId;
        }
        public void setPhone(string phno)
        {
            this.Phone = phno;
        }
        public void setLname(string Lname)
        {
            this.Lname = Lname;
        }
        public void setFname(string Fname)
        {
            this.Fname = Fname;
        }
        public void setAddress(string Addr)
        {
            this.Address = Addr;
        }









    
    }
}