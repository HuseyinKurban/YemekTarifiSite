<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            background-color: #CCCCCC;
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
            width: 400px;
        }
        .auto-style29 {
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
                    <asp:Button ID="btngoster" runat="server" CssClass="auto-style24" Height="35px" Text="+" Width="35px" OnClick="btngoster_Click" />
                </strong></td>
                <td class="auto-style26"><strong>
                    <asp:Button ID="btnkapat" runat="server" CssClass="auto-style24" Height="35px" Text="-" Width="35px" OnClick="btnkapat_Click" />
                </strong></td>
                <td class="auto-style29"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style28"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style18" Text='<%# Eval("TarifAd") %>' Style="color: #FFFFFF; font-size: 20pt"></asp:Label>
                        </strong></td>
                        <td class="auto-style23">


                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>">
                                <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/iconlar/Öneri.png" Width="40px" /></a>
                        </td>

                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
  
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC; margin-top:15px;" >
        <table class="auto-style11">
            <tr>
                <td class="auto-style25"><strong>
                    <asp:Button ID="btnpanel4goster" runat="server" CssClass="auto-style24" Height="35px" Text="+" Width="35px" OnClick="btnpanel4goster_Click1"/>
                </strong></td>
                <td class="auto-style26"><strong>
                    <asp:Button ID="btnpanel4gizle" runat="server" CssClass="auto-style24" Height="35px" Text="-" Width="35px" OnClick="btnpanel4gizle_Click1" />
                </strong></td>
                <td class="auto-style29"><strong>ONAYLI TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style28"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style18" Text='<%# Eval("TarifAd") %>' Style="color: #FFFFFF; font-size: 20pt"></asp:Label>
                        </strong></td>
                        <td class="auto-style23">


                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>">
                                <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/iconlar/Öneri.png" Width="40px" /></a>
                        </td>

                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

