using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Windows;

namespace WebApplication1
{
    public partial class Contact : Page
    {

        #region sifre

        public string password = "password";  //Enter your password here

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack) return; 
        }
        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            
            try
            {

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("your@gmail.com");  //Enter your gmail
                mail.To.Add(txtAlıcı.Text);
                mail.Subject = txtSubject.Text;
                mail.Body = txtMailBody.Text;

                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("your@gmail.com", password); //And enter your gmail here too
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                SmtpServer.Dispose();
                MessageBox.Show("E-Posta Gönderildi");
            }

            catch (Exception ex)
            {

                MessageBox.Show(ex.ToString());
            }
        }
    }
}