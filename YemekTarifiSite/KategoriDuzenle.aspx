<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            margin-left: 40px;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style16 {
            text-align: right;
            color: #FFFFFF;
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
            <td class="auto-style16"><strong>KATEGORİ AD :</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>ADET :</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>RESİM :</strong></td>
            <td class="auto-style14">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="220px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="50px" Text="Güncelle" Width="100px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

