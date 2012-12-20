<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HesteSko.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>
<html lang="da">
<head runat="server">
    <title>CRUD Hestesko</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<!-- Bootstrap -->
    <link href="~/bootstrap_assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="~/bootstrap_assets/css/bootstrap-responsive.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="~/bootstrap_assets/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="row-fluid">
    <div class="leftbox span5">
        <asp:Button ID="ButtonNy" runat="server" Text="Opret ny hestesko" 
            onclick="ButtonNy_Click" /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [ASPSNIPPETS_CRUD_Hestesko]">
        </asp:SqlDataSource>
        
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="Repeater1_ItemCommand">
        <ItemTemplate >
        <div class="controls controls-row">
        <div class="span3"><%# Eval("navn") %></div><div class="span3"> str. <%# Eval("størelse") %></div>
            <asp:LinkButton ID="ButtonRet" runat="server" class="btn btn-mini" CommandName="Ret" CommandArgument='<%# Eval("id") %>' ><i class="icon-edit "></i> Ret</asp:LinkButton>
            <asp:LinkButton ID="ButtonSlet" runat="server" class="btn btn-mini" OnClientClick='<%# Eval("navn", "return confirm(\"Er du sikker på at du vil slette {0}\");") %>' CommandName="Slet" CommandArgument='<%# Eval("id") %>'><i class="icon-remove-sign"></i> Slet</asp:LinkButton>
            
            
        </div>
        </ItemTemplate>
        </asp:Repeater>

    </div>
    <div class="rightbox span7">
        <asp:Panel ID="PanelForm" runat="server" Visible="False">
            <div class="form-horizontal">
                <div class="control-group">
                    <label class="control-label" for="TextBoxNavn">
                        navn:
                    </label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxNavn" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxNavn"
                            Display="Dynamic" ErrorMessage="Navn skal udfyldes" ValidationGroup="sko">udfyld venligst</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="TextBoxStørelse">
                        størelse:
                    </label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxStørelse" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxStørelse"
                            ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBoxStørelse"
                            ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="1" Type="Integer"
                            ValidationGroup="sko"></asp:RangeValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="TextBoxBeskrivelse">
                        Beskrivelse:
                    </label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxBeskrivelse" runat="server" Height="75px" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxBeskrivelse"
                            ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <asp:Button ID="ButtonOpret" runat="server" Text="Opret" Visible="False" OnClick="ButtonOpret_Click"
                            ValidationGroup="sko" />
                        <asp:Button ID="ButtonGem" runat="server" Text="Gem" Visible="False" OnClick="ButtonGem_Click"
                            ValidationGroup="sko" />
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
