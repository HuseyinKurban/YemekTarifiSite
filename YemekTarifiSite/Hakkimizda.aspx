<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style12 {
            color: #FFFFFF;
            font-size: 20pt;
            font-weight: bold; /* Kalın yazı */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>' CssClass="auto-style12"></asp:Label>
            <br />
            <br />
<div class="social-links">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.linkedin.com/in/huseyinkurban/" Target="_blank">
        <asp:Image ID="Image2" runat="server" Height="70px" ImageUrl="~/Resimler/LinkedIn.png" Width="70px" CssClass="social-image" />
    </asp:HyperLink>

    &nbsp;

    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://github.com/HuseyinKurban" Target="_blank">
        <asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/Resimler/Github.png" Width="70px" CssClass="social-image" />
    </asp:HyperLink>
</div>


        </ItemTemplate>
    </asp:DataList>
</asp:Content>

