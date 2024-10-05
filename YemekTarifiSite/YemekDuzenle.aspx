<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            color: #FFFFFF;
        }
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>YEMEK AD :</strong></td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtyemekad" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>YEMEK
                    <br />
                    MALZEMELERİ :</strong></td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtyemekmalzeme" runat="server" Height="150px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>YEMEK TARİFİ :</strong></td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtyemektarifi" runat="server" Height="200px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>KATEGORİ :</strong></td>
                <td class="auto-style28">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="270px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="btnDuzenle" runat="server" CssClass="auto-style29" Height="40px" OnClick="btnDuzenle_Click" Text="Güncelle" Width="109px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

