using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1{
    public partial class About : Page{
        protected void Page_Load(object sender, EventArgs e){

            if (Page.IsPostBack) return;
        }

        protected void ds_Selecting(object sender, LinqDataSourceSelectEventArgs e){

            DataClasses1DataContext db = new DataClasses1DataContext();

            var data = from d in db.Books
                       select new
                       {

                           d.ID,
                           d.Name,
                           d.Author,
                           Type = d.BookType.Name
                       };

            e.Result = data;
        }

        protected void ShowBook_Click(object sender, EventArgs e){

            var link = sender as LinkButton;
            Response.Redirect(String.Format("LibraryAddBook.aspx?ID={0}", link.Text));
        }
    }
}