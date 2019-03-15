using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddCategory_Click(object sender, EventArgs e)
    {

        String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using(SqlConnection con=new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into tblCategories values('" + txtCategory.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtCategory.Text = string.Empty;
        }

    }
}