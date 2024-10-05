<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


          .auto-style29 {
       font-weight: bold;
       display: inline-block;
       font-size: x-large;
       color: #FFFFFF; /* Yazı rengi beyaz */
       background-color: #28a745; /* Yeşil tonlarında, ekle butonu için */
       border: none;
       border-radius: 8px;
       cursor: pointer;
       transition: background-color 0.3s ease, transform 0.3s ease; /* Animasyonlar */
   }

       .auto-style29:hover {
           background-color: #218838; /* Fareyle üzerine gelindiğinde koyu yeşil */
           transform: scale(1.1); /* Hafif büyütme efekti */
       }

       .auto-style29:active {
           background-color: #1e7e34; /* Butona basıldığında daha koyu yeşil */
           transform: scale(1); /* Basıldığında boyutu normale döner */
       }

            .auto-style30 {
        text-align: right;
    }
    .auto-style31 {
        font-size: large;
    }

            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td>
                <strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="350px" TextMode="MultiLine" Width="435px" CssClass="auto-style31"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"><strong __designer:mapid="2040">
                    <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style29" Height="40px" Text="Güncelle" Width="150px" OnClick="btnGuncelle_Click" />
                </strong></td>
        </tr>
        </table>
</asp:Content>

