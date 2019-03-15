using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
{ //do something
         // drpSubject.Items.Insert(0, new ListItem("Choose One:", ""));
        //drpSubject.Items.Insert(1, new ListItem("General Customer Service", ""));
        //drpSubject.Items.Insert(2, new ListItem("Suggestions", ""));
        //drpSubject.Items.Insert(3, new ListItem("Product Support", ""));
        }
       
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Page.EnableEventValidation = false;

        String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
         using(SqlConnection con= new SqlConnection(cs))
         {
             SqlCommand cmd = new SqlCommand("select * from users where Email='" + txtEmail.Text + "'", con);
             con.Open();
             SqlDataAdapter sda = new SqlDataAdapter(cmd);
             DataTable dt = new DataTable();
             sda.Fill(dt);
             if(dt.Rows.Count!=0)
             {
                 //string pass = Convert.ToString(dt.Rows[0][2]);
                 string ToEmailAddress = "dhruv.kisan18@gmail.com";
                 string UserName = txtName.Text;
                 string Message=txtMessag.Text;
                 String Subject = Convert.ToString(drpSubject.SelectedItem.Text); 
                 //string Subject = txtSubject.Text;
                 String EmailBody = "Name: " + UserName + ",<br/><br> Message is:" + Message + "";
                 MailMessage ContactMail = new MailMessage("dhruv.kisan18@gmail.com", ToEmailAddress);

                 ContactMail.Body = EmailBody;
                 ContactMail.IsBodyHtml = true;
                 ContactMail.Subject = Subject;

                 SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                 SMTP.Credentials = new NetworkCredential()
                 {
                     UserName = "Dhruv.kisan18@gmail.com",
                     Password = "dhruv123"
                 };
                 SMTP.EnableSsl = true;
                 SMTP.Send(ContactMail);

                 ////https://www.google.com/settings/security/lesssecureapps


                 lebMessage.Text = "Your request is successfully Submitted";
                 lebMessage.ForeColor = Color.Green;

             }
             else
             {
                 lebMessage.Text = "oops Email is incorrect!";
                 lebMessage.ForeColor = Color.Red;
             }
         }
    }
}