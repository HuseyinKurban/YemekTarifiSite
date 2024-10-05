<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style16 {
            color: #FFFFFF;

        }

        .auto-style18 {
            height: 23px;
            width: 418px;
        }
        .auto-style19 {
            text-align: center;
            width: 418px;
        }
        .auto-style20 {
            width: 418px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style16">
        <ItemTemplate>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style19"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>' Style="font-size: x-large"></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <strong>Malzemeler :</strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style20"><strong>Tarif :</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
             
                        <asp:Image ID="Image2" runat="server" Height="300px"  ImageUrl='<%# Eval("YemekResim") %>' Width="350px" CssClass="resim" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style20">
                        <strong>Puan :</strong>
                        <strong>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style20">
                        <strong>Eklenme Tarihi : <em>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </em></strong>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style20">&nbsp;</td>
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

