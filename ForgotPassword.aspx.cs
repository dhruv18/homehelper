using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btPassRec_Click(object sender, EventArgs e)
    {

        String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using(SqlConnection con= new SqlConnection(cs))
        {
            SqlCommand cmd=new SqlCommand("select * from users where Email='"+tbEmailId.Text+"'",con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
             if(dt.Rows.Count!=0)
            {
                string pass = Convert.ToString(dt.Rows[0][2]);
                //String myGUiD = Guid.NewGuid().ToString();
                //int Uid =Convert.ToInt32( dt.Rows[0][1]);
                //SqlCommand cmd1=new SqlCommand("insert into ForgotPassRequests values('"+myGUiD+"','"+Uid+"',getdate())",con);
                //cmd1.ExecuteNonQuery();

                 //send mail
                String ToEmailAddress = dt.Rows[0][3].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "hi " + Username + ",<br/><br> Your Password is :"+pass+"";
                MailMessage passRecMail = new MailMessage("homehelper.test@gmail.com",ToEmailAddress);

                passRecMail.Body = EmailBody;
                passRecMail.IsBodyHtml = true;
                passRecMail.Subject = "Forgot Passwrod";

                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
   
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "homehelper.test@gmail.com",
                    Password = "homehelper123"


                };
                SMTP.EnableSsl = true;
                SMTP.Send(passRecMail);


           //https://www.google.com/settings/security/lesssecureapps




                lblPassRec.Text = "Check your email to reset your password";
                lblPassRec.ForeColor = Color.Green;
             }
            else
             {
                 lblPassRec.Text = "oops email is incorrect!";
                 lblPassRec.ForeColor = Color.Red;
             }

        }

    }
}