<%@  Page Language="C#" AutoEventWireup="true"  CodeBehind="studentCreate.aspx.cs" Inherits="WebApplication1.ogrenciCreate" %>

<form id="form1" runat="server">
        <h3>Yeni Öğrenci Oluştur</h3>

        <asp:Label ID="Msg" ForeColor="maroon" runat="server" /><br />

        <table cellpadding="3" style="border:2px solid black">
            <tr style="border:2px solid black"> 
                <td style="border:2px solid black"> Öğrencinin Adı:</td>
                <td style="border:2px solid black">
                    <asp:TextBox ID="txtName" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="UsernameRequiredValidator" runat="server"
                        ControlToValidate="txtName" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>
            </tr>
            <tr style="border:2px solid black">
                <td style="border:2px solid black"> Öğrencinin Soyadı:</td>
                <td style="border:2px solid black">
                    <asp:TextBox ID="txtLastname" runat="server"/></td>
                <td>
                    <asp:RequiredFieldValidator ID="PasswordRequiredValidator" runat="server"
                        ControlToValidate="txtLastname" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>
            </tr>
             <tr style="border:2px solid black"> 
                <td style="border:2px solid black"> E-Posta:</td>
                <td style="border:2px solid black">
                    <asp:TextBox ID="txtEmail" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="EMailValidator" runat="server"
                        ControlToValidate="txtEmail" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="CreateUserButton" Text="Kaydet" OnClick="CreateUser_OnClick" runat="server" /></td>
            </tr>
        </table>
    </form>