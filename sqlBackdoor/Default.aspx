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
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="216px" TextMode="MultiLine" 
            Width="387px"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonExecuteQuery" runat="server" 
            onclick="ButtonExecuteQuery_Click" Text="Udfør" />
        <br />
        <asp:Label ID="LabelResponse" runat="server"></asp:Label>
        <asp:GridView ID="GridViewResult" runat="server" AllowPaging="True" 
            AllowSorting="True" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="navn" HeaderText="navn" SortExpression="navn" />
                <asp:BoundField DataField="race" HeaderText="race" SortExpression="race" />
                <asp:BoundField DataField="farve" HeaderText="farve" SortExpression="farve" />
                <asp:BoundField DataField="antalBen" HeaderText="antalBen" 
                    SortExpression="antalBen" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
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
