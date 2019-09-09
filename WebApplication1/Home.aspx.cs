using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {

        public class ImagesList
        {

            public string url { get; set; }
            public string title { get; set; }
            public string active { get; set; }
            public string alt { get; set; }
        };
        protected void Page_Load(object sender, EventArgs e)
        {

            string[] filePaths = Directory.GetFiles(Server.MapPath("~/img/"));   // GetFiles ile img klasöründeki görselin isimlerini aldık
            List<ListItem> files = new List<ListItem>();                         // Bir liste oluştduk

            var data = new List<ImagesList>();

            var i = 0;

            foreach (string filePath in filePaths)                               //Döngü ile klasörde okuduğumuz isimleri listeye ekledik
            {
                string fileName = Path.GetFileName(filePath);

                var item = new ImagesList();

                item.url = "img/" + fileName;
                item.title = Path.GetFileName(filePath);
                item.alt = i.ToString();
                item.active = i == 0 ? "item active" : "item";

                i++;

                data.Add(item);

                //files.Add(new ListItem(fileName, "img/" + fileName));
            }

            Repeater1.DataSource = data;
            Repeater1.DataBind();
        }
    }
}