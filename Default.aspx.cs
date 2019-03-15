using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindcartnumber(); 
        if (Session["USERNAME"] != null)
        {
            btnSignup.Visible = true;
            btnsignin.Visible = false;
            btnSignOut.Visible = true;


        }
        else
        {
            btnSignup.Visible = false;
            btnsignin.Visible = true;
            btnSignOut.Visible = false;
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
}
