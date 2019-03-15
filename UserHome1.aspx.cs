using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindcartnumber();
        if (!IsPostBack)
        {
            BindCategoryrepeter();
        }

        
        if (Session["USERNAME"] != null)
        {
            btnSignOut.Visible = true;
            btnsignin.Visible = false;
            lblSuccess.Text = "Login Success, Welcome " + Session["USERNAME"].ToString() + "";
        }
        else
        {
            btnSignOut.Visible = false;
            btnsignin.Visible = true;

            //Response.Redirect("~/SignIn.aspx");
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


    private void BindCategoryrepeter()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select CatID from tblCategories where CatName='Marble'  ", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtbrands = new DataTable();
                    sda.Fill(dtbrands);
                    rptproduct.DataSource = dtbrands;
                    rptproduct.DataBind();
                }
            }
        }
    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
    }
}