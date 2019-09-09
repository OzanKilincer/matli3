<%@ Page Title="Oturum Açın" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="WebApplication1.OgrenciLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/OgrenciLogin.css" rel="stylesheet" />
    <script src="Scripts/OgrenciLogin.js"></script>
    <div class="container">
        <div id="login-box">
            <div class="logo">

                <h1 class="logo-caption"><span class="tweak">G</span>iriş</h1>
                <%--<asp:Label ID="errorMsg" ForeColor="Red" runat="server" Text=""></asp:Label>--%>
            </div>
            <!-- /.logo -->
            <div class="controls">
                <asp:TextBox ID="txtUserName" runat="server" placeholder="Kullanıcı Adı" Width="100%" class="form-control" />

                <asp:TextBox ID="txtPassword" runat="server" placeholder="Şifre" Width="100%" TextMode="Password" class="form-control" />

                <asp:CheckBox ID="RememberMe" runat="server" />
                
                <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Beni Hatırla</asp:Label>

                <asp:Button ID="Loginbtn" runat="server" class="btn btn-default btn-block btn-custom" OnClick="Loginbtn_Click" Text="Giriş" />

                <asp:Button ID="signbtn" runat="server" class="btn btn-default btn-block btn-custom" Text="Hesap Oluştur" OnClick=" signInBtn_Click" />

            </div>
            <!-- /.controls -->
        </div>
        <!-- /#login-box -->
    </div>
    <!-- /.container -->
    <div id="particles-js"></div>
    <!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js"></script>-->

</asp:Content>
