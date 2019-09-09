using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class onlyMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack) return;
 
            modelDataContext db = new modelDataContext();

            var data = from d in db.ogrenci_listes
                       select new
                       {

                           d.ID,
                           d.Ad,
                           Soyad = d.Soyadi,
                           d.Email
                       };

            gvPerson.DataSource = data;
            gvPerson.DataBind();
        }

        public void BtnCreate_OnClick(object sender, EventArgs args)
        {

            Response.Redirect("studentCreate.aspx", false);
        }
    }
}