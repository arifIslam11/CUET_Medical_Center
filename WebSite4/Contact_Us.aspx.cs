using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Net.Mail;

public partial class Contact_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string to = to_txt.Text;
        string from = gma_txt.Text;
        string subject = sub_txt.Text;
        string body = bod_txt.Text;
        using (MailMessage mm = new MailMessage(gma_txt.Text, to_txt.Text))
        {
            mm.Subject = sub_txt.Text;
            mm.Body = bod_txt.Text;
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential(gma_txt.Text, pas_txt.Text);
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
        }
    }
}