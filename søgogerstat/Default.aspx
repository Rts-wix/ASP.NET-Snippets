<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="søgogerstat_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLocalStyles" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMenu" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">

    <h1>Søg og erstat i tekster</h1>
    <p>
        Man kan udskifte tegn eller hele delstrenge med <code>String</code>s egen <code>.replace()</code>-metode.
    </p>
    <p>
        <code>String.replace()</code> har to udgaver, der begge tager to parametre.
    </p>
    <p>
        Enten to parametre af <code>char</code>-typen. Det tegn der skal finde, og det tegn det skal udskiftes med.
    <br />
        Eller to <code>String</code>s, den streng der skal findes, og den der skal erstattes.
    </p>
    <h2>Eksempler:</h2>
    <p class="muted">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal></p>
    <p class="text-info">Her er teksten uforandret</p>
    <p class="muted">
        <asp:Literal ID="Literal2" runat="server"></asp:Literal></p>
    <p class="text-info small">Her er teksten efter søg og erstat</p>
  
</asp:Content>

