using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductView : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProductImages();
            BindProductData();
        }
    }
    private void BindProductImages()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblProductImages where PID=" + PID + "", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtbrands = new DataTable();
                    sda.Fill(dtbrands);
                    rptImages.DataSource = dtbrands;
                    rptImages.DataBind();
                }
            }
        }
    }
    private void BindProductData()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblProducts where PID=" + PID + "", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtbrands = new DataTable();
                    sda.Fill(dtbrands);
                    rptdata.DataSource = dtbrands;
                    rptdata.DataBind();
                }
            }
        }

    }
    protected string GetActiveClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }
    protected void btnAddTOCart_Click(object sender, EventArgs e)
    {
        string SelectedSize = string.Empty;
        foreach(RepeaterItem item in rptdata.Items)
        {
            if(item.ItemType ==ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var rbList = item.FindControl("rblsize") as RadioButtonList;
                SelectedSize = rbList.SelectedValue;
                var lblError = item.FindControl("lblAlerttext") as Label;
                lblError.Text = " ";
            }
        }
        if (SelectedSize != "")
        {

            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            if (Request.Cookies["CartPID"] != null)
            {
                string cookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                cookiePID = cookiePID + "," + PID + "-" + SelectedSize;

                HttpCookie cartProducts = new HttpCookie("CartPID");
                cartProducts.Values["CartPID"] = cookiePID;
                cartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cartProducts);
            }
            else
            {
                HttpCookie cartProducts = new HttpCookie("CartPID");
                cartProducts.Values["CartPID"] = PID.ToString() +"-"+ SelectedSize;
                cartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cartProducts);
            }
            Response.Redirect("~/ProductView.aspx?PID=" + PID);
        }
        else
        {
            foreach(RepeaterItem item in rptdata.Items)
            {
            if(item.ItemType ==ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var lblError = item.FindControl("lblAlerttext") as Label;
                lblError.Text = "Please select size";
            }
            }
        }
    }
}