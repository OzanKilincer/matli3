<%@ Page Title="Üyeler" Language="C#" AutoEventWireup="true" MasterPageFile="/Site.Master" CodeBehind="onlyMembers.aspx.cs" Inherits="WebApplication1.onlyMembers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%">
        <tr>
            <td>

                <asp:GridView ID="gvPerson" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White"
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">

                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <Columns>

                        <asp:BoundField DataField="ID" ItemStyle-Width=" 100px" HeaderText="ID" ReadOnly="True"
                            SortExpression="PersonID" />
                        <asp:BoundField DataField="Ad" HeaderText="İsim" ReadOnly="True"
                            SortExpression="PersonID" />
                        <asp:BoundField DataField="Soyad" HeaderText="Soyad" ReadOnly="True"
                            SortExpression="PersonID" />
                        <asp:BoundField DataField="Email" HeaderText="E-Posta" ReadOnly="True"
                            SortExpression="PersonID" />

                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="BtnCreate" runat="server" CausesValidation="false" CommandName="Create"
                                    Text="Öğrenci Ekle" OnClick = "BtnCreate_OnClick"/>
                            </ItemTemplate>
                        </asp:TemplateField>

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
