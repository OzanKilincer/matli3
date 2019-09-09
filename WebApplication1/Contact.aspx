<%@ Page Title="Contact" Async="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox ID="txtAlıcı" runat="server" placeholder="Alıcı" Width="100%" class="form-control" />

    </br></br>
    
    <asp:TextBox ID="txtSubject" runat="server" placeholder="Konu" Width="100%" class="form-control" />

    </br></br>

    <asp:TextBox ID="txtMailBody" runat="server" placeholder="Mesajınız" Width="100%" class="form-control" />

    <asp:Button ID="Gonder" runat="server" Text="Gönder" OnClick="ButtonGonder_Click"/>

</asp:Content>