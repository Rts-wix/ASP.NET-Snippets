<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="sqlBackdoor_Default" MasterPageFile="~/sample.master" %>
<asp:Content runat="server" ID="title" ContentPlaceHolderID="ContentPlaceHolderTitle">
SqlBackdoor 
</asp:Content>

<asp:Content runat="server" ID="style" ContentPlaceHolderID="ContentPlaceHolderLocalStyles">
    <style type="text/css">
        div#backdoor
        {
            background-image:url("images/bluedoor.png");
            padding: 10px;
            
        }
        div#backdoor #ContentPlaceHolderContent_ContentPlaceHolderContent_TextBoxSQL
        {
            font-size:9px;
            color:Blue;
            width: 435px;
            height: 360px;
            opacity: 0.7;
        }
        
    </style>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="ContentPlaceHolderContent" runat="server" >
    
    <h1>
        SqlBackdoor
    </h1>
    <p>
        En bagdør til websitets database. 
        Husk at den er en kæmpe sikkerhedsrisiko, på størrelse med en ladeport. Derfor 
        er SelectBoxen hvor man vælger datasource tom. Du kan selv sætte den i funktion 
        igen, på din test maskine.</p>
    <p>
        På den anden side. Hvis du ikke har andre mulighder for at udføre sql kommandoer 
        på databasen, så er her en løsning... fx hvis du eksporteret din database med 
        &quot;publish for provider&quot; til en *.sql fil, så kan du regenerere databasen her.</p>
    
    <form id="form1" runat="server">
    
    <div id="backdoor">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [heste]"></asp:SqlDataSource>
    
        <br />
        <asp:DropDownList ID="DropDownListConnectionStrings" runat="server">
        </asp:DropDownList>
        <asp:Button ID="ButtonNoGO" runat="server" onclick="ButtonNoGO_Click" 
            Text="Fjern 'GO'" />
        <br />
        <asp:TextBox ID="TextBoxSQL" runat="server"  TextMode="MultiLine" 
            >select * from heste</asp:TextBox>
        <br />
        <asp:Button ID="ButtonExecuteQuery" runat="server" 
            onclick="ButtonExecuteQuery_Click" Text="Udfør" />
        <br />
        <asp:Label ID="LabelResponse" runat="server"></asp:Label>
        <asp:GridView ID="GridViewResult" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="true" 
            AllowSorting="false">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            
            <EmptyDataTemplate>
                &lt;empty&gt;
            </EmptyDataTemplate>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </div>
    </form>

</asp:Content>
