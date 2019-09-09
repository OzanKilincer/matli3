<%@ Page Title="Kitaplar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%; margin-right: 0px;">
        <tr>

            <td>

                <asp:LinqDataSource ID="ds" runat="server" OnSelecting ="ds_Selecting"></asp:LinqDataSource>

                <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" Width="100%" BackColor="White"
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID ="ds">

                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <Columns>

                         <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("ID", "~/LibraryAddBook.aspx?ID={0}")  %>' runat="server">Göster</asp:HyperLink>

                                <%--<asp:LinkButton ID="NameLabel" runat="server" Text='<%# Eval("ID") %>' OnClick="ShowBook_Click"/>--%> 

                            </ItemTemplate>
                             
                            <HeaderTemplate>

                                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/LibraryAddBook.aspx?ID=0" runat="server">Ekle</asp:HyperLink>
                        
                            </HeaderTemplate>
                        
                         </asp:TemplateField>

                        <asp:BoundField DataField="ID" ItemStyle-Width=" 100px" HeaderText="ID" ReadOnly="True"/>
                        <asp:BoundField DataField="Name" HeaderText="Kitap Adı" ReadOnly="True"/>
                        <asp:BoundField DataField="Author" HeaderText="Yazar" ReadOnly="True"/>
                        <asp:BoundField DataField="Type" HeaderText="Kitap Türü" ReadOnly="True"/>

                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>

            </td>
        </tr>
    </table>

</asp:Content>
