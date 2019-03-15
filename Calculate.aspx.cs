using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Calculate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        Int32 h =Convert.ToInt32(txtHeight.Text);
        Int32 l = Convert.ToInt32( txtLength.Text);
        Int32 sum = 0;
        Int32 area = h * l;
        if(area%12==0){
             sum = area / 12;
    }
        else
        {
             sum = area / 12;
            sum = sum + 1;
        }
        lebresult.Text = "" + sum + " - Boxes are Require";
        lebresult.ForeColor = Color.Green;
       

        
    }
}