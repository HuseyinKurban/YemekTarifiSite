<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="OnaylıYorumDuzenle.aspx.cs" Inherits="OnaylıYorumDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style15 {
            color: #FFFFFF;
        }

        .auto-style16 {
            text-align: right;
        }

   .auto-style14 {
    display: inline-block;
    font-weight: bold;
    font-size: x-large;
    color: #fff; /* Yazı rengi beyaz */
    background-color: #007BFF; /* Mavi tonlarında arka plan rengi */
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease; /* Animasyonlar */
}

.auto-style14:hover {
    background-color: #0056b3; /* Fareyle üzerine gelindiğinde koyu mavi */
    transform: scale(1.1); /* Biraz büyütme efekti */
}

.auto-style14:active {
    background-color: #004085; /* Butona basıldığında daha koyu mavi */
    transform: scale(1); /* Basıldığında boyutu normale döner */
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>AD SOYAD :</strong></td>
            <td>
                <asp:TextBox ID="txtad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>MAİL ADRESİ :</strong></td>
            <td >
                <asp:TextBox ID="txtmail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>İÇERİK :</strong></td>
            <td >
                <asp:TextBox ID="txticerik" runat="server" Width="250px" Height="120px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>YEMEK :</strong></td>
            <td >
                <asp:TextBox ID="txtyemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16" >
                <asp:Button ID="btnonaykaldir" runat="server" Height="40px" Text="Onay Kaldır" Width="150px" CssClass="auto-style14" OnClick="btnonaykaldir_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

