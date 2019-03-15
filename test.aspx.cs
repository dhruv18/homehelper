using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //drpSubject.Items.Insert(0, new ListItem("Choose One:", ""));
            //drpSubject.Items.Insert(1, new ListItem("General Customer Service", ""));
            //drpSubject.Items.Insert(2, new ListItem("Suggestions", ""));
            //drpSubject.Items.Insert(3, new ListItem("Product Support", ""));

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String value = Convert.ToString(drpSubject.SelectedItem.Text);
        //string value = drpSubject.SelectedItem.Text;
        Label1.Text = "hello "+ value +"";
    }
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    drpSubject.Items.Insert(0, new ListItem("Choose One:", ""));
    //    drpSubject.Items.Insert(1, new ListItem("General Customer Service", ""));
    //    drpSubject.Items.Insert(2, new ListItem("Suggestions", ""));
    //    drpSubject.Items.Insert(3, new ListItem("Product Support", ""));

    //}
}