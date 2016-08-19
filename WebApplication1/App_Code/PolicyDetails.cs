namespace UCMOHealthCare
{
    /// <summary>
    /// Summary description for PolicyDetails
    /// </summary>
    public class PolicyDetails
    {

        string PolicyID, PolicyInformation;
        double Price;
        int NoOfMembers;
        public void setPolicyID(string policyid)
        {
            this.PolicyID = policyid;
        }
        public void setPolicyInformation(string policyinfo)
        {
            this.PolicyInformation = policyinfo;
        }
        public void setPrice(double price)
        {
            this.Price = price;
        }
        public void setNoOfMembers(int noofmembers)
        {
            this.NoOfMembers = noofmembers;
        }
        public string getPolicyID()
        {
            return this.PolicyID;
        }
        public string getPolicyInformation()
        {
            return this.PolicyInformation;
        }
        public double getPrice()
        {
            return this.Price;
        }
        public int getNoOfMebmers()
        {
            return this.NoOfMembers;
        }
    }
}