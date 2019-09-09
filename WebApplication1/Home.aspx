<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:LinqDataSource ID="ds" runat="server"></asp:LinqDataSource>

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
     <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class='<%# DataBinder.Eval(Container.DataItem,"active") %>'>
                        <img src='<%# DataBinder.Eval(Container.DataItem,"url") %>'/>
                    <div class="carousel-caption">
                        <h3><%# DataBinder.Eval(Container.DataItem,"title") %></h3>
                        <p>We love the Big Apple!</p>
                    </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span> 
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    
</asp:Content>
