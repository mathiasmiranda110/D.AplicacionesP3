<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tips._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p></p>
        <asp:BulletedList ID="BulletedList2" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="url" DisplayMode="HyperLink" Height="16px" OnClick="BulletedList1_Click" Width="965px">
            <asp:ListItem Value="https://www.microsoft.com/es-pe/">Microsoft</asp:ListItem>
        </asp:BulletedList>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/hyperlinks.xml" OnTransforming="XmlDataSource1_Transforming"></asp:XmlDataSource>
        <hr />
        <p>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
        </p>
        <p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">BulletList</asp:ListItem>
                <asp:ListItem Value="1">FileUpload</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="url" DisplayMode="HyperLink" Height="16px" OnClick="BulletedList1_Click" Width="965px">
                        <asp:ListItem Value="https://www.microsoft.com/es-pe/">Microsoft</asp:ListItem>
                    </asp:BulletedList>
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/hyperlinks.xml" OnTransforming="XmlDataSource1_Transforming"></asp:XmlDataSource>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                </asp:View>
            </asp:MultiView>
        </p>
    </div>

    <div class="row">
        <br />
        <br />
    </div>

</asp:Content>
