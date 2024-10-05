<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style14 {
            text-align: right;
            width: 341px;
        }
        .auto-style25 {
            width: 341px;
        }
        .auto-style26 {
            width: 153px;
        }
        .auto-style28 {
            width: 153px;
            color: #FFFFFF;
            font-size: medium;
            text-align: right;
        }
        .auto-style29 {
            text-align: left;
            width: 341px;
        }
        .auto-style30 {
            color: #FFFFFF;
        }
        .auto-style31 {
            width: 153px;
            color: #FFFFFF;
            font-size: 14pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style13">
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>TARİF AD :&nbsp; </strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="txttarifad" runat="server" Width="280px" Font-Size="14pt" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>MALZEMELER : </strong> </td>
                <td class="auto-style29">
                    <asp:TextBox ID="txttarifmalzeme" runat="server" Width="280px" Font-Size="14pt" Height="75px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>YAPILIŞ :</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtyapilis" runat="server" Width="280px" Font-Size="14pt" Height="150px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>TARİF RESİM :</strong></td>
                <td class="auto-style29">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="280px" CssClass="auto-style30" />
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>TARİF ÖNEREN :</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtoneren" runat="server" Font-Size="14pt" Height="30px" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>ÖNEREN MAİL :</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtonerenmail" runat="server" Font-Size="14pt" Height="30px" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">KATEGORİ :</td>
                <td class="auto-style29">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="280px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btnOnayla" runat="server" CssClass="tarif-oner-button" Font-Bold="True" Font-Italic="True" Height="39px" OnClick="btnOnayla_Click" Text="Onayla" Width="140px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

