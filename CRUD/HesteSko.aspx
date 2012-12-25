<%@ Page Title="" Language="C#" MasterPageFile="~/sample.master" AutoEventWireup="true" CodeFile="HesteSko.aspx.cs" Inherits="CRUD_Hestesko" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" Runat="Server">
    Hestesko - CRUD Demo 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLocalStyles" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
 
  <form id="form1" runat="server">
   
    <div class="row-fluid">
    <div class="leftbox span5">
        <asp:LinkButton ID="ButtonNy" runat="server" class="btn btn-small"
            onclick="ButtonNy_Click" ><i class="icon-plus"></i>Opret ny hestesko</asp:LinkButton><br />
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
    </div>
  </form>  
</asp:Content>

