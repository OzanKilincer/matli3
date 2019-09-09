using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class OgrenciLogin : System.Web.UI.Page
    {
        private const string user = "1";
        private const string pass = "1";

        public object UserNameTextbox { get; private set; }
        public object PasswordTextbox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Loginbtn_Click(object sender, EventArgs args)   {

            if (Membership.ValidateUser(txtUserName.Text, txtPassword.Text))
            {

                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text,
                RememberMe.Checked);

                Session["Data"] = txtUserName.Text;
                Response.Redirect("Default.aspx");
            }

            //else errorMsg.Text = "Giriş Başarısız";
        }

        protected void signInBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("userCreate.aspx");
        }
    }
}