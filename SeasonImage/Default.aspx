<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
        <h1>
            Sommertid eller vintertid:</h1>
      
        <asp:Image ID="Image1" runat="server" Width="200px" />
        <p>
        Så er det jo bare at vente til det skifter...

        </p>
        <p>
            Eller vi kan teste lidt mere systematisk:</p>
        <table class="style1">
            <tr>
                <td>
                    <asp:Image ID="ImageSommer" runat="server" Width="200px" />
                </td>
                <td>
                    <asp:Image ID="ImageVinter" runat="server" Width="200px" />
        
                </td>
            </tr>
            <tr>
                <td>
                    bør være sommer</td>
                <td>
        bør være vinter</td>
            </tr>
        </table>
&nbsp;<p>
            I Page_Load checker jeg om metoden sommertid() returnerer true (det gør den når 
            DateTime.Now.IsDaylightSavingTime() er true). Der er en ekstra 
            sommertid(DateTime currentDate), den hør at jeg kan teste med en fast dato.</p>
        <p>
            Det er i det hele taget lidt tidskrævende at afprøve den funktion, Det ville 
            faktisktage op til et år at sikre sig at alle måneder er dækket. Så vi må finde 
            på noget</p>
        <h1>
        De fire årstider:</h1>
        Her bruger vi metoden <em>skiftImageUrlEfterAarstid(Image image, DateTime iDag)</em>, 
        og <em>ImageLoadAarstid(object sender, EventArgs e)</em>.<br />
        Den første laver arbejdet, den anden er en eventHandler som kan sættes direkte 
        på asp:Iamge-taget.<br />
        <br />
        I eksemplet er der også oprettet en Page_LoadCompleted. Det er kun for at kunne 
        afprøve om skiftImageUrlEfterAarstid() virker. Page_LoadCompleted udføres efter 
        Page_Load OG EFTER eventhandlere på sidens øvrige controls. ImageLoadAarstid 
        sætter jo ellers et andet billede ind i stedet for det jeg ville teste, hvis jeg 
        tester fra Page_Load.<br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Image ID="ImageForaar2" runat="server" Width="200px" onload="ImageLoadAarstid" />
                </td>
                <td>
                    <asp:Image ID="ImageSommer2" runat="server" Width="200px" onload="ImageLoadAarstid"/>
                </td>
                <td>
                    <asp:Image ID="ImageEfteraar2" runat="server" Width="200px" onload="ImageLoadAarstid" />
                </td>
                <td>
                    <asp:Image ID="ImageVinter2" runat="server" Width="200px" onload="ImageLoadAarstid" />
                </td>
            </tr>
            <tr>
                <td>
        forår          </td>
                <td>
        sommer 
                </td>
                <td>
        efterår 
                </td>
                <td>
        vinter 
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
