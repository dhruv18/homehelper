using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Add_Workers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bindWorkersRepeter();
        }
    }

    private void bindWorkersRepeter()
    {
        String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            using(SqlCommand cmd = new SqlCommand("select * from Workers",con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptWorkers.DataSource = dt;
                    rptWorkers.DataBind();
                }
            }
        }
    }


    protected void btnAddWorker_Click(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into Workers values('" + textName.Text + "','"+textLocation.Text+"','"+textMobile.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            textName.Text = string.Empty;
            textLocation.Text = string.Empty;
            textMobile.Text = string.Empty;
        }
    }
}