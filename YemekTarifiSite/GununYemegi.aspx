<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        width: 101%;
    }
    .auto-style13 {
        text-align: center;
    }
    .auto-style14 {
        font-size: x-large;
    }
        .auto-style15 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style12">
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style14" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <strong>Malzemeler :</strong>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Tarif :</strong>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/Resimler/mucver-ytk-site.jpg" Width="350px" />
                </td>
            </tr>
            
           
            <tr>
                <td>
                    <strong>Puan :</strong>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td>
                    <strong>Eklenme Tarihi : <em>
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                    </em></strong>
                </td>
            </tr>
           
            <tr>
                <td>&nbsp;</td>
            </tr>
           
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

