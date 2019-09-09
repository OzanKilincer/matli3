using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ogrenciCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void CreateUser_OnClick(object sender, EventArgs args)
        {

            try
            {
                // Create new user.

                modelDataContext db = new modelDataContext();

                ogrenci_liste dt = new ogrenci_liste();

                dt.Ad = txtName.Text;
                dt.Soyadi = txtLastname.Text;
                dt.Email = txtEmail.Text;

                db.ogrenci_listes.InsertOnSubmit(dt);

                db.SubmitChanges();

                Response.Redirect("~/onlyMembers/onlyMembers.aspx");
            }
            catch (MembershipCreateUserException e)
            {
                Msg.Text = GetErrorMessage(e.StatusCode);
            }
            catch (HttpException e)
            {
                Msg.Text = e.Message;
            }
        }
        public string GetErrorMessage(MembershipCreateStatus status)
        {
            switch (status)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    return "Kullanıcı adı daha önce alınmış. Başka bir kullanıcı adı deneyin.";

                case MembershipCreateStatus.DuplicateEmail:
                    return "Bu e-posta ile daha önce hesap açılmış.";

                case MembershipCreateStatus.InvalidPassword:
                    return "Şifrenizde geçersiz karakterler bulunuyor.";

                case MembershipCreateStatus.InvalidEmail:
                    return "Geçersiz bir e-posta hesabı girdiniz.";

                //case MembershipCreateStatus.InvalidAnswer:
                //    return "bb.";

                //case MembershipCreateStatus.InvalidQuestion:
                //    return "aa.";

                case MembershipCreateStatus.InvalidUserName:
                    return "Kullanıcı adı geçersiz. Lütfen gözden geçirin";

                case MembershipCreateStatus.ProviderError:
                    return "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                case MembershipCreateStatus.UserRejected:
                    return "Kullanıcı oluşturma engellendi. Lütfen sistem yetkilisine danışın.";

                default:
                    return "Bilinmeyen bir hata oluştu.";
            }
        }
    }
}