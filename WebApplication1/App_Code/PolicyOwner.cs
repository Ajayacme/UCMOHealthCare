namespace UCMOHealthCare
{
    /// <summary>
    /// Summary description for PolicyOwner
    /// </summary>
    public class PolicyOwner : Customer
    {
        public PolicyOwner(string CustID) : base(CustID)
        {
            // 
            // TODO: Add constructor logic here
            //
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