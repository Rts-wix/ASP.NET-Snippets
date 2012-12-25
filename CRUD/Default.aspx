<%@ Page Title="" Language="C#" MasterPageFile="~/sample.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="CRUD_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" Runat="Server">
    CRUD
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLocalStyles" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
    <h1>CRUD Demo</h1>
    <p class="lead">Crud er når man laver et interface til at redigere nogle data i en database. 
    Det typisk en bestemt tabel man vil redigere, men det kan også være en kombination af fere tabeller.</p>
    <p>CRUD er en forkortelse og står for:</p>
    <ul>
        <li><em><strong>C</strong>reate</em> at oprette et objekt, indsætte en post i 
            databasen</li>
        <li><em><strong>R</strong>ead</em> at hente et object, udvælge en post i databasen</li>
        <li><em><strong>U</strong>pdate</em> at ændre et objekt, updatere en post i 
            databasen</li>
        <li><em><strong>D</strong>elete</em> at slette et objekt, slette en post i databsen.</li>
    </ul>
    <p>
        En CRUD løsning, gør at vi kan gøre de fire ting med et stykke af databasen. 
        [illustration].</p>
    <p>
        En helt simpel CRUD (næsten) uden dikkedarer kan du se i <a href="HesteSko.aspx">
        Hestesko</a>-eksemplet.</p>
</asp:Content>

