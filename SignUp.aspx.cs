using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class singUP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btSignup_Click(object sender, EventArgs e)
    {
        if (tbUname.Text != "" & tbPass.Text != "" & tbName.Text != "" & tbEmail.Text != "" & tbCpass.Text != "")
        {
            if (tbPass.Text == tbCpass.Text)
            {


                String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;


                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("insert into Users values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                     lblMsg.ForeColor = Color.Green; 
                lblMsg.Text = "Registration Successfull";
                Response.Redirect("~/SignIn.aspx");
            }
                }
            
            else
            {

                lblMsg.ForeColor = Color.Red; 
                lblMsg.Text = "passwords do not match";}}
            
         else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "all Fields are mandatory";
        }

        }
        }
       


    
