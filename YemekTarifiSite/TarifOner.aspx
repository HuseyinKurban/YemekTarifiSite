<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        width: 100%;
    }
    .auto-style13 {
        height: 23px;
    }
    .auto-style14 {
            height: 23px;
            text-align: right;
            width: 108px;
        }
    .auto-style15 {
        height: 23px;
        text-align: center;
    }
    .auto-style17 {
        height: 23px;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
    <tr>
        <td class="auto-style14"><strong>Tarif Ad:</strong></td>
        <td class="auto-style13">
            <strong>
            <asp:TextBox ID="txttarifad" runat="server" Width="300px" CssClass="tarif-ad-textbox"></asp:TextBox>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Malzemeler :</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="txtmalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="300px" CssClass="malzemeler-textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Yapılış :</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="txtyapilis" runat="server" Height="200px" TextMode="MultiLine" Width="300px" CssClass="yapilisi-textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Resim :</strong></td>
        <td class="auto-style13">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" CssClass="tarif-ad-textbox" />
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Tarif&nbsp; Öneren :</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="txttarifoneren" runat="server" Width="300px" CssClass="tarif-oneren-textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Mail Adresi :</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="txtmailadresi" runat="server" TextMode="Email" Width="300px" CssClass="mail-adresi-textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong></strong></td>
        <td class="auto-style15">
            <asp:Button ID="btntarifoner" runat="server" BackColor="#66CCFF" CssClass="tarif-oner-button" Font-Bold="True" Font-Italic="True" Height="50px" Text="Tarif Öner" Width="150px" OnClick="btntarifoner_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style17" colspan="2">&nbsp;</td>
    </tr>
</table>
</asp:Content>

