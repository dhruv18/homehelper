using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Products : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          Int64 CID = Convert.ToInt64(Request.QueryString["CID"]);
            if (CID == 18)
            {
                BindProductRepeater();

            }
            else
            {
                test();
            }
        }
    }

    private void BindProductRepeater()
    {
        Int64 CID = Convert.ToInt64(Request.QueryString["CID"]);
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtbrands = new DataTable();
                    sda.Fill(dtbrands);
                    rptrProducts.DataSource = dtbrands;
                    rptrProducts.DataBind();
                }
            }
        }
    }
    private void test()
    {
        Int64 CID = Convert.ToInt64(Request.QueryString["CID"]);
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("test", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter addcid = new SqlParameter("@id", CID);
                cmd.Parameters.Add(addcid);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtbrands = new DataTable();
                    sda.Fill(dtbrands);
                    rptrProducts.DataSource = dtbrands;
                    rptrProducts.DataBind();
                }
            }
        }
    }


    protected void btnAddToCart_Click(object sender, EventArgs e)
    {

    }
}