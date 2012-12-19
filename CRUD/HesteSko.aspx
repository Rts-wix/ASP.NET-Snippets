<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HesteSko.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Hestesko</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="leftbox">
        <asp:Button ID="ButtonNy" runat="server" Text="Opret ny hestesko" 
            onclick="ButtonNy_Click" /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM [Hestesko]">
        </asp:SqlDataSource>
        
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="Repeater1_ItemCommand">
        <ItemTemplate >
        <%# Eval("navn") %>, str. <%# Eval("størelse") %>
            <asp:Button ID="ButtonRet" runat="server" Text="Ret" CommandName="Ret" CommandArgument='<%# Eval("id") %>' />
            <asp:Button ID="ButtonSlet" runat="server" Text="Slet" CommandName="Slet" CommandArgument='<%# Eval("id") %>'/>
            <br />
        </ItemTemplate>
        </asp:Repeater>

    </div>
    <div class="rightbox">
        <asp:Panel ID="PanelForm" runat="server" Visible="False">
     
        <table>
            <tr>
                <td>
                    navn:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxNavn" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxNavn" Display="Dynamic" 
                        ErrorMessage="Navn skal udfyldes" ValidationGroup="sko">udfyld venligst</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    størelse:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxStørelse" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxStørelse" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="TextBoxStørelse" ErrorMessage="RangeValidator" 
                        MaximumValue="100" MinimumValue="1" Type="Integer" ValidationGroup="sko"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Beskrivelse:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxBeskrivelse" runat="server" Height="75px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBoxBeskrivelse" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="ButtonOpret" runat="server" Text="Opret" Visible="False" 
                        onclick="ButtonOpret_Click" ValidationGroup="sko" />
                    <asp:Button ID="ButtonGem" runat="server" Text="Gem" Visible="False" 
                        onclick="ButtonGem_Click" ValidationGroup="sko" />
                </td>
            </tr>
        </table>
           </asp:Panel>
    </div>
    </form>
</body>
</html>
