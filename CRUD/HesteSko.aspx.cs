using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    // U i CRUD
    protected void ButtonGem_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "UPDATE ASPSNIPPETS_CRUD_Hestesko SET navn = @navn, størelse = @størelse, beskrivelse = @beskrivelse WHERE id = @id";
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = ViewState["HesteskoId"].ToString();

        cmd.Parameters.Add("@navn", SqlDbType.VarChar).Value = TextBoxNavn.Text;
        cmd.Parameters.Add("@størelse", SqlDbType.VarChar).Value = TextBoxStørelse.Text;
        cmd.Parameters.Add("@beskrivelse", SqlDbType.VarChar).Value = TextBoxBeskrivelse.Text;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Repeater1.DataBind();

        PanelForm.Visible = false;
        ButtonOpret.Visible = false;
        ButtonGem.Visible = false;
        form1.DefaultButton = "ButtonNy";
    }

    // C i CRUD
    protected void ButtonOpret_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "INSERT INTO ASPSNIPPETS_CRUD_Hestesko (navn, størelse, beskrivelse) VALUES (@navn, @størelse, @beskrivelse)";

        cmd.Parameters.Add("@navn", SqlDbType.VarChar).Value = TextBoxNavn.Text;
        cmd.Parameters.Add("@størelse", SqlDbType.VarChar).Value = TextBoxStørelse.Text; 
        cmd.Parameters.Add("@beskrivelse", SqlDbType.VarChar).Value = TextBoxBeskrivelse.Text;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Repeater1.DataBind();

        PanelForm.Visible = false;
        ButtonOpret.Visible = false;
        ButtonGem.Visible = false;

        form1.DefaultButton = "ButtonNy";

    }

    
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        // R i CRUD
        if (e.CommandName == "Ret")
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT * FROM ASPSNIPPETS_CRUD_Hestesko WHERE id = @id";

            cmd.Parameters.Add("@id", SqlDbType.Int).Value = e.CommandArgument.ToString();

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
           
            if (reader.Read())
            {
                TextBoxNavn.Text = reader["navn"].ToString();
                TextBoxStørelse.Text = reader["størelse"].ToString();
                TextBoxBeskrivelse.Text = reader["beskrivelse"].ToString();
            }
            conn.Close();

            ViewState["HesteskoId"] = e.CommandArgument.ToString();

            PanelForm.Visible = true;
            ButtonOpret.Visible = false;
            ButtonGem.Visible = true;

            form1.DefaultButton = "ButtonGem";
        }
        // D i CRUD
        else if (e.CommandName == "Slet")
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "DELETE FROM ASPSNIPPETS_CRUD_Hestesko WHERE id = @id";

            cmd.Parameters.Add("@id", SqlDbType.Int).Value = e.CommandArgument.ToString();

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            Repeater1.DataBind();

            PanelForm.Visible = false;
            ButtonOpret.Visible = false;
            ButtonGem.Visible = false;

            form1.DefaultButton = "ButtonNy";
        }
    }

    protected void ButtonNy_Click(object sender, EventArgs e)
    {
        TextBoxNavn.Text = "";
        TextBoxStørelse.Text = "";
        TextBoxBeskrivelse.Text = "";

        PanelForm.Visible = true;
        ButtonOpret.Visible = true;
        ButtonGem.Visible = false;

        form1.DefaultButton = "ButtonOpret";
    }
   
}