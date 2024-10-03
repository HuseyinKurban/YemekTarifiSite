<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style16 {
            color: #FFFFFF;
        }

        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style16">
        <ItemTemplate>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style14" Text='<%# Eval("GununYemegiAd") %>' Style="font-size: x-large"></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <strong>Malzemeler :</strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Tarif :</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/Resimler/mucver-ytk-site.jpg" Width="350px" CssClass="resim" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                </tr>

                <tr>
                    <td>
                        <strong>Puan :</strong>
                        <strong>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                        </strong>
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

