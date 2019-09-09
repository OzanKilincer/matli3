<%@ Page Title="Merhaba" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userCreate.aspx.cs" Inherits="WebApplication1.studentCreateOuter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/OgrenciLogin.css" rel="stylesheet" />
    <script src="Scripts/OgrenciLogin.js"></script>
    <div class="container">
        <div id="login-box">
            <div class="logo">

                <h1 class="logo-caption"><span class="tweak">K</span>ullanıcı <span class="tweak">O</span>luştur</h1>

                <asp:Label ID="Msg" ForeColor="maroon" runat="server" /><br />

                <%--<asp:Label ID="errorMsg" ForeColor="Red" runat="server" Text=""></asp:Label>--%>
            </div>
            <!-- /.logo -->
            <div class="controls">
                <asp:TextBox ID="UsernameTextbox" runat="server" placeholder="Kullanıcı Adı" Width="100%" class="form-control" />
                <td>
                    <asp:RequiredFieldValidator ID="UsernameRequiredValidator" runat="server"
                        ControlToValidate="UserNameTextbox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>

                <asp:TextBox ID="PasswordTextbox" runat="server" placeholder="Şifre" Width="100%" TextMode="Password" class="form-control" />
                <td>
                    <asp:RequiredFieldValidator ID="PasswordRequiredValidator" runat="server"
                        ControlToValidate="PasswordTextbox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>

                <asp:TextBox ID="PasswordConfirmTextbox" runat="server" placeholder="Şifreyi Onaylayın" Width="100%" TextMode="Password" class="form-control" />
                <td>
                    <asp:RequiredFieldValidator ID="PasswordConfirmRequiredValidator" runat="server"
                        ControlToValidate="PasswordConfirmTextbox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu"/>
                    <asp:CompareValidator ID="PasswordConfirmCompareValidator" runat="server"
                        ControlToValidate="PasswordConfirmTextbox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ControlToCompare="PasswordTextBox"
                        ErrorMessage="Şifreler eşleşmek zorunda." />
                </td>

                <asp:TextBox ID="EMailTextBox" runat="server" placeholder="E-Posta" Width="100%" class="form-control" />
                <td>
                    <asp:RequiredFieldValidator ID="EMailValidator" runat="server"
                        ControlToValidate="EMailTextbox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>


                <%--<input type="text" name="username" placeholder="Password" class="form-control" />--%>


                <asp:Button ID="CreateUserButton" runat="server" ValidationGroup="One" class="btn btn-default btn-block btn-custom" OnClick="CreateUser_OnClick" Text="Kaydet" />

            </div>
            <!-- /.controls -->
        </div>
        <!-- /#login-box -->
    </div>
    <!-- /.container -->
    <div id="particles-js"></div>
    <!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js"></script>-->

</asp:Content>
