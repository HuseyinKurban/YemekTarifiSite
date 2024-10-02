<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        font-size: 30pt;
            color: #FFFFFF;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style17 {
            height: 23px;
            margin-left: 40px;
        }
        .auto-style18 {
            color: #FFFFFF;
        }
        .auto-style20 {
            color: #FFFFFF;
            font-size: small;
        }
        .auto-style21 {
            text-align: center;
            font-size: x-large;
            background-color: #FFFFCC;
        }
        .auto-style22 {
            text-align: right;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
        <tr>
            <td class="auto-style14"><strong>
<asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
</strong></td>
        </tr>
        <tr>
            <td><strong mapid="11a">Malzemeler :</strong>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong mapid="11e">Yemek Tarifi :</strong>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" Width="437px">
                    <ItemTemplate>
                        <table class="auto-style13">
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label8" runat="server" CssClass="auto-style20" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style17" style="border-bottom-style: inset; border-bottom-width: thin">
                                    <asp:Label ID="Label7" runat="server" CssClass="auto-style18" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <div class="auto-style21"><strong>Yorumlar</strong></div>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style13">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style22"><strong>Ad Soyad :&nbsp; </strong></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="250px" Font-Size="14pt" Height="30px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22"><strong>Mail :</strong></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="250px" Font-Size="14pt" Height="30px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22"><strong>Yorum :</strong></td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="250px" Font-Size="14pt" Height="100px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button  ID="btnYorumYap" runat="server" Text="Yorum Yap" Width="100px" Font-Bold="True" Font-Italic="True" Height="30px" OnClick="btnYorumYap_Click"  />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

