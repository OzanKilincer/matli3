using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class LibraryAddBook : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            if (Page.IsPostBack) return;

            DataClasses1DataContext db = new DataClasses1DataContext();

            BookTypeTextBox.DataSource = db.BookTypes.ToList();
            BookTypeTextBox.DataTextField = "Name";
            BookTypeTextBox.DataValueField = "ID";
            BookTypeTextBox.DataBind();

            string id = Request.QueryString["ID"];

            if (id == "0"){

                UpdateButton.Visible = false;
            }

            else{

                AddBookButton.Visible = false;

                Fill_Page(); 

                var data = from d in db.Books
                           where d.ID == Int32.Parse(id)
                           select d;

                foreach (Book d in data){

                    d.Name = BookNameTextbox.Text;
                    d.Author = AuthorTextBox.Text;
                    d.Type = Int32.Parse(BookTypeTextBox.Text);
                }

                try{

                    db.SubmitChanges();

                }

                catch (Exception ex){

                    Console.WriteLine(ex);
                }
            }
        }
            
        public void Fill_Page(){

            string id = Request.QueryString["ID"];

            DataClasses1DataContext db = new DataClasses1DataContext();

            var data = from d in db.Books
                       where d.ID == Int32.Parse(id)
                       select d;

            foreach(Book d in data)
            {

                BookNameTextbox.Text = d.Name;
                AuthorTextBox.Text = d.Author;
                BookTypeTextBox.Text = d.Type.ToString();
            }
        }

        public void AddBook_OnClick(object sender, EventArgs args) {
            // Create a new Book

            try
            {

                DataClasses1DataContext db = new DataClasses1DataContext();

                Book dt = new Book();

                dt.ID = Int32.Parse(IDTextBox.Text);
                dt.Name = BookNameTextbox.Text;
                dt.Author = AuthorTextBox.Text;
                dt.Type = Int32.Parse(BookTypeTextBox.Text);

                db.Books.InsertOnSubmit(dt);

                db.SubmitChanges();

                Response.Redirect("~/Library.aspx");
            }   

            catch (HttpException e)
            {

                Msg.Text = e.Message;

            }
        }

        protected void UpdateBook_OnClick(object sender, EventArgs e)
        {

            Response.Redirect("~/Library.aspx");
        }

    }
}

