using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AddProduct : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bindcategory();
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
            if(dt.Rows.Count!=0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName";
                ddlCategory.DataValueField = "CatID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-select-", "0"));
            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into tblProducts values('"+txtPName.Text+"','"+txtPrice.Text+"','"+txtSelPrice.Text+"','"+ddlCategory.SelectedItem.Value+"','"+txtDescription.Text+"');select scope_identity();", con);
            con.Open();
            Int64 PID=Convert.ToInt64(cmd.ExecuteScalar());
            //insert image 1
            if (fuImage.HasFile)
            {
                string savepath = Server.MapPath("~/images/ProductImages/") + PID;
                if (!Directory.Exists(savepath))
                {
                    Directory.CreateDirectory(savepath);
                }
                string extention = Path.GetExtension(fuImage.PostedFile.FileName);
                fuImage.SaveAs(savepath + "\\" + txtPName.Text.ToString().Trim() + "01" + extention);

                SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtPName.Text.ToString().Trim() + "01" + "','" + extention + "')", con);
                cmd3.ExecuteNonQuery();
            }
            //insert image 2
            if (FuImage1.HasFile)
            {
                string savepath = Server.MapPath("~/images/ProductImages/") + PID;
                if (!Directory.Exists(savepath))
                {
                    Directory.CreateDirectory(savepath);
                }
                string extention = Path.GetExtension(FuImage1.PostedFile.FileName);
                FuImage1.SaveAs(savepath + "\\" + txtPName.Text.ToString().Trim() + "02" + extention);

                SqlCommand cmd4 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtPName.Text.ToString().Trim() + "02" + "','" + extention + "')", con);
                cmd4.ExecuteNonQuery();
            }
            
            
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //if (dt.Rows.Count != 0)
            //{
            //    ddlCategory.DataSource = dt;
            //    ddlCategory.DataTextField = "CatName";
            //    ddlCategory.DataValueField = "CatID";
            //    ddlCategory.DataBind();
            //    ddlCategory.Items.Insert(0, new ListItem("-select-", "0"));
            //}
        }
    }
}