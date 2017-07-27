using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddAdmin : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        con = new SqlConnection(str);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into admin(Id,name,password) values ('" + adminId.Text + "','" + adminName.Text + "','" + adminPassword.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("LogIn.aspx");
    }
}