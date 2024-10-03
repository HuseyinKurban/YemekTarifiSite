<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        width: 100%;
    }
    .auto-style13 {
        margin-left: 80px;
    }
    .auto-style14 {
        text-align: right;
        font-size: 14pt;
    }
        .auto-style17 {
            text-align: right;
            font-size: 20px;
            font-weight: bold;
            color: #FFFFFF;
            text-transform: uppercase;
        }
        .auto-style19 {
        height: 44px;
    }
    .auto-style20 {
        margin-left: 80px;
        height: 44px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
    <tr>
        <td class="auto-style17" colspan="2">
            <asp:Label ID="Label4" runat="server" CssClass="iletisimbasliklabel" Text="Mesaj Paneli"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
            <asp:Label ID="Label3" runat="server" Text="Ad Soyad" CssClass="iletisimlabel"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtadsoyad" runat="server" Width="300px" CssClass="comment-box"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">
            <asp:Label ID="Label5" runat="server" Text="Mail" CssClass="iletisimlabel"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" Width="300px" CssClass="comment-box"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">
            <asp:Label ID="Label6" runat="server" Text="Konu" CssClass="iletisimlabel"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtkonu" runat="server" Width="300px" CssClass="comment-box"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">
            <asp:Label ID="Label7" runat="server" Text="Mesaj" CssClass="iletisimlabel"></asp:Label>
        </td>
        <td class="auto-style13">
            <asp:TextBox ID="txtmesaj" runat="server" Height="100px" TextMode="MultiLine" Width="300px" CssClass="comment-box"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style19"></td>
        <td class="auto-style20"><strong><em>
            <asp:Button ID="btnGonder" runat="server" CssClass="comment-button" Height="40px" Text="Gönder" Width="130px" OnClick="btnGonder_Click" />
            </em></strong></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
</table>
</asp:Content>

