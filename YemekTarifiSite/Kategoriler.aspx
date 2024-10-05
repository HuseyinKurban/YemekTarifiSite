<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

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

        .auto-style31 {
            font-size: 17pt;
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style32 {
            font-size: 20pt;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style11">
            <tr>
                <td class="auto-style25"><strong>
                    <asp:Button ID="btngoster" runat="server" CssClass="auto-style24" Height="35px" OnClick="btngoster_Click" Text="+" Width="35px" />
                </strong></td>
                <td class="auto-style26"><strong>
                    <asp:Button ID="btnkapat" runat="server" CssClass="auto-style24" Height="35px" OnClick="btnkapat_Click" Text="-" Width="35px" />
                </strong></td>
                <td class="auto-style32"><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <itemtemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style19"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style18" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style23">
                            <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/iconlar/delete.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style23">
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%# Eval("Kategoriid")%>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/iconlar/Update.png" Width="40px" /></a>
                            
                        </td>
                    </tr>
                </table>
            </itemtemplate>
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
                <td class="auto-style32"><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style11">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>KATEGORİ AD :</strong></td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtkategoriad" runat="server" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>KATEGORİ İKON :</strong></td>
                <td class="auto-style28">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="220px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style29" Height="40px" Text="Ekle" Width="60px" OnClick="btnEkle_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

