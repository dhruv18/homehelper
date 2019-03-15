using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {  if (!IsPostBack)
        {
            bindcategory();
        }
    bindcartnumber();
        if (Session["USERNAME"] != null)
        {
            btnSignOut.Visible = true;
            btnsignin.Visible = false;
            
           
        }
        else
        {
            btnSignOut.Visible = false;
            btnsignin.Visible = true;
            //Response.Redirect("~/SignIn.aspx");
        }
        
      
}
    private void bindcategory()
    {

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblCategories", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName";
                ddlCategory.DataValueField = "CatID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-select-", "0"));
            }
        }
    }

    private void bindcartnumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {

            string cookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] productArray = cookiePID.Split(',');
            int productcount = productArray.Length;
            pcount.InnerText = productcount.ToString();
        }
        else
        {
            pcount.InnerText = 0.ToString();
        }
    }
    
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        String selectCategory = ddlCategory.SelectedItem.Text;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select CatID from tblCategories where CatName = '" + selectCategory + "' ", con);
            con.Open();
            SqlDataReader reder = cmd.ExecuteReader();
            while (reder.Read())
            {
                int value = int.Parse(reder[0].ToString());
               
                Response.Redirect("Products.aspx?CID="+value+"");
            }




        }
    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
    }
    protected void btnSignOut_Click1(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}
