using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication1
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        public struct ClientData
        {
            public String Name;
            public int ID;
        }

        [WebMethod]

        public ClientData[] MustleriListele(int Number)
        {
            ClientData[] Clients = null;

            if (Number > 0 && Number <= 10)
            {

                Clients = new ClientData[Number];
                for (int i = 0; i < Number; i++)
                {
                    
                    Clients[i].Name = "Client " + i.ToString();
                    Clients[i].ID = i;
                }

                return Clients;
            }

            else
            {

                Clients = new ClientData[1];

                Clients[0].Name = "Sınırın dışında bir değer girdiniz!";
                Clients[0].ID = 0;
                
                return Clients;
            }
        }
    }
}
