using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

///
public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
      
        // afprøver sommer tid()
        if (sommertid())
        {
            Image1.ImageUrl = "billeder/Desert.jpg";
        }
        else
        {
            Image1.ImageUrl = "billeder/Penguins.jpg";
        }

        if (sommertid(new DateTime(2012, 12, 24, new System.Globalization.GregorianCalendar()))) //System.Globalization.GregorianCalendarTypes.Localized) ))
        {
            ImageVinter.ImageUrl = "billeder/Desert.jpg";
        }
        else
        {
            ImageVinter.ImageUrl = "billeder/Penguins.jpg";
        }

        if (sommertid(new DateTime(2012, 06, 24, new System.Globalization.GregorianCalendar()))) //System.Globalization.GregorianCalendarTypes.Localized) ))
        {
            ImageSommer.ImageUrl = "billeder/Desert.jpg";
        }
        else
        {
            ImageSommer.ImageUrl = "billeder/Penguins.jpg";
        }
        
        ////Dårlig afprøvning afprøvning årstid
        // prøv envtuelt af fjerne kommentæringen her fra og kommentere Page_LoadCompleted ud. Det duer ikke!
        //skiftImageUrlEfterAarstid(ImageForaar2, new DateTime(2013, 03, 01));
        //skiftImageUrlEfterAarstid(ImageSommer2, new DateTime(2013, 06, 01));
        //skiftImageUrlEfterAarstid(ImageEfteraar2, new DateTime(2013, 09, 01));
        //skiftImageUrlEfterAarstid(ImageVinter2, new DateTime(2013, 12, 01));

    }

    // Den her er kun med for at vi kan fuske med dato'erne og afprøve om billederne skifter
    protected void Page_LoadComplete(object sender, EventArgs e)
    {
        skiftImageUrlEfterAarstid(ImageForaar2, new DateTime(2013, 03, 01));
        skiftImageUrlEfterAarstid(ImageSommer2, new DateTime(2013, 06, 01));
        skiftImageUrlEfterAarstid(ImageEfteraar2, new DateTime(2013, 09, 01));
        skiftImageUrlEfterAarstid(ImageVinter2, new DateTime(2013, 12, 01));

    }
 

    /// <summary>
    /// Er det sommertid, eller ej?
    /// </summary>
    /// <param name="currentDate">Angiv datoen der skal checkes</param>
    /// <returns>true/false</returns>
    protected static bool sommertid(DateTime currentDate)   
    {
        bool result = false;

        result = currentDate.IsDaylightSavingTime();

        return result;
    }

    /// <summary>
    /// Er det sommer tid?
    /// Bruger dags dato som default værdi
    /// </summary>
    /// <returns>sommertid? true/false</returns>
    protected static bool sommertid()
    {
        return sommertid( DateTime.Now );
    }

    /// <summary>
    /// EventHandler som sættes på asp:Image controls.
    /// Skifter billedes url v.h.a skiftImageUrlEfterAarstid
    /// </summary>
    /// <param name="sender">Det objekt der udløser eventet. 
    /// Af typen object ( for at være kompatibel med ALLE controls. Her er det altid af type Image, så vi laver et typeCast.</param>
    /// <param name="e">bruges ikke her</param>
    protected void ImageLoadAarstid(object sender, EventArgs e)
    {
        Image image = ((Image)sender);
        DateTime iDag = DateTime.Now;

        skiftImageUrlEfterAarstid(image, iDag);
    }

    /// <summary>
    /// Laer selve skitet af billedets url.
    /// Indeler året i fire årstider, med tre måneder i hver. Tilpas det som du ønsker.
    /// </summary>
    /// <param name="image">billedet som skal skiftes</param>
    /// <param name="iDag">dags dato</param>
    private static void skiftImageUrlEfterAarstid(Image image, DateTime iDag)
    {
        switch (iDag.Month)
        {
            // vinter
            case 12:
            case 1:
            case 2:
                image.ImageUrl = "billeder/Penguins.jpg";
                break;
            // forår
            case 3:
            case 4:
            case 5:
                image.ImageUrl = "billeder/Tulips.jpg";
                break;
            // sommer
            case 6:
            case 7:
            case 8:
                image.ImageUrl = "billeder/Desert.jpg";
                break;
            // efterår
            case 9:
            case 10:
            case 11:
                image.ImageUrl = "billeder/Lighthouse.jpg";
                break;
            default:
                image.ImageUrl = "billeder/nopicture.jpg";
                break;
        }
    }
}