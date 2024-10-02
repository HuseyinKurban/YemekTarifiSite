<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            font-size: x-large;
        color: #000000;
    }
        .auto-style14 {
            background-color: #FFFFFF;
        text-align: center;
    }
        .auto-style15 {
            background-color: #CCCCCC;
        }
    .auto-style16 {
        color: #FFFFFF;
    }
    .auto-style17 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList2" runat="server" Width="444px">
        <ItemTemplate>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style14"><strong>


                    <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekAd") %>'></asp:Label></a>    


                        </strong></td>

                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# Eval("YemekResim") %>' Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi :</strong>
                        <strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style16" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </strong>&nbsp;<strong>Puan :</strong>
                        <strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style16" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

