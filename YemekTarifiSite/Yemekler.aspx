<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            background-color: #CCCCCC;
        }

        .auto-style15 {
            width: 103%;
            height: 42px;
        }

        .auto-style16 {
            background-color: #CCCCCC;
            margin-top: 15px;
        }

        .auto-style18 {
            font-size: 18pt;
            color: #FFFFFF;
        }

        .auto-style19 {
            width: 330px;
            height: 40px;
            text-align: left;
        }

        .auto-style23 {
            text-align: right;
            height: 44px;
            margin-left: 50px;
        }

        .auto-style24 {
            display: inline-block;
            font-weight: bold;
            font-size: x-large;
            color: #fff;
            background-color: #C6394A; /* Arka plan rengi (butonun ana rengi) */
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease; /* Animasyonlar */
        }

            .auto-style24:hover {
                background-color: #A82E3C; /* Fareyle üzerine gelindiğinde arka plan rengi */
                transform: scale(1.1); /* Biraz büyütme efekti */
            }

            .auto-style24:active {
                background-color: #8F2832; /* Butona basıldığında arka plan rengi */
                transform: scale(1); /* Basıldığında boyutu normale döner */
            }

        .auto-style25 {
            width: 30px;
        }

        .auto-style26 {
            width: 34px;
        }

        .auto-style27 {
            font-size: 25pt;
            color: #000000;
        }

        .auto-style28 {
            margin-left: 40px;
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

        .auto-style32 {
            width: 198px;
        }

        .auto-style33 {
            font-size: 17pt;
            color: #FFFFFF;
            text-align: left;
            width: 198px;
        }

        .auto-style34 {
            width: 198px;
            font-size: 17pt;
            color: #FFFFFF;
        }

        .auto-style35 {
            margin-left: 40px;
            text-align: center;
        }
        .auto-style36 {
            margin-left: 40px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style11">
            <tr>
                <td class="auto-style25"><strong>
                    <asp:Button ID="btngoster" runat="server" CssClass="auto-style24" Height="35px" Text="+" Width="35px" OnClick="btngoster_Click" />
                </strong></td>
                <td class="auto-style26"><strong>
                    <asp:Button ID="btnkapat" runat="server" CssClass="auto-style24" Height="35px" Text="-" Width="35px" OnClick="btnkapat_Click" />
                </strong></td>
                <td class="auto-style27"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style19"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style18" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style23">
                            <a href="Yemekler.aspx?Yemekid=<%# Eval("Yemekid")%>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/iconlar/delete.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style23">
                         <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid")%>"> 
                                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/iconlar/Update.png" Width="40px" /></a>

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style16">
        <table class="auto-style11">
            <tr>
                <td class="auto-style25"><strong>
                    <asp:Button ID="btnpanel4goster" runat="server" CssClass="auto-style24" Height="35px" Text="+" Width="35px" OnClick="btnpanel4goster_Click" />
                </strong></td>
                <td class="auto-style26"><strong>
                    <asp:Button ID="btnpanel4gizle" runat="server" CssClass="auto-style24" Height="35px" Text="-" Width="35px" OnClick="btnpanel4gizle_Click" />
                </strong></td>
                <td class="auto-style27"><strong>YEMEK EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33"><strong>YEMEK AD :</strong></td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtyemekad" runat="server" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style33"><strong>YEMEK MALZEMELERİ :</strong></td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtyemekmalzeme" runat="server" Height="150px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34"><strong>YEMEK TARİFİ :</strong></td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtyemektarifi" runat="server" Height="200px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34"><strong>KATEGORİ :</strong></td>
                <td class="auto-style28">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="240px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style29" Height="40px" Text="Ekle" Width="60px" OnClick="btnEkle_Click" />
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>



