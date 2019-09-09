<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LibraryAddBook.aspx.cs" Inherits="WebApplication1.LibraryAddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/OgrenciLogin.css" rel="stylesheet" />
    <script src="Scripts/OgrenciLogin.js"></script>
    <div class="container">
        <div id="login-box">
            <div class="logo">

                <h1 class="logo-caption"><span class="tweak">K</span>itap <span class="tweak">E</span>kle</h1>

                <asp:Label ID="Msg" ForeColor="maroon" runat="server" /><br />
     
            </div>
            <!-- /.logo -->
            <div class="controls">
                <asp:TextBox ID="IDTextBox" runat="server" placeholder="Kitap ID" Width="100%" class="form-control" />
                <td>
                    <asp:RequiredFieldValidator ID="IDValidator" runat="server"
                        ControlToValidate="IDTextbox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>

                <asp:TextBox ID="BookNameTextbox" runat="server" placeholder="Kitap Adı" Width="100%" class="form-control" />
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="BookNameTextbox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>

                <asp:TextBox ID="AuthorTextBox" runat="server" placeholder="Yazar" Width="100%" class="form-control" />
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="AuthorTextBox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>

                <asp:DropDownList ID="BookTypeTextBox" runat="server" placeholder="Kitap Türü" Width="100%" class="form-control" />
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="BookTypeTextBox" ValidationGroup="One" ForeColor="red"
                        Display="Static" ErrorMessage="Zorunlu" /></td>

                <asp:Button ID="AddBookButton" runat="server" ValidationGroup="One" class="btn btn-default btn-block btn-custom" OnClick="AddBook_OnClick" Text="Kaydet" />
                <asp:Button ID="UpdateButton" runat="server" ValidationGroup="One" class="btn btn-default btn-block btn-custom" OnClick="UpdateBook_OnClick" Text="Güncelle" />
    
            </div>
            <!-- /.controls -->
        </div>
        <!-- /#login-box -->
    </div>
    <!-- /.container -->
    <div id="particles-js"></div>
    <!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js"></script>-->

</asp:Content>
