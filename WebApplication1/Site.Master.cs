using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : MasterPage
    {

        protected string txtUser { get; set; }
        protected string txtAction { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            var mu = Membership.GetUser();

            if(mu != null)
            {
                

                Session["Data"] = mu.UserName;
            }
            

            if (Session["Data"] != null)
            {

                txtUser = Session["Data"].ToString();

                txtAction = "Çıkış";
            }

            else
            {

                txtUser = "Oturum Açın";

                txtAction = "Giriş Sayfası";
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {

            Session.Clear();
            FormsAuthentication.SignOut();

            Response.Redirect("~/userLogin.aspx");
        }
    }
}