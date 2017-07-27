using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AfterLoginStudent : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        con = new SqlConnection(str);
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
        int id = Convert.ToInt32(Session["user"]);
        cmd.CommandText = "select * from Student_Info where Id = @flag";
        cmd.Parameters.AddWithValue("@flag", id);
        dr = cmd.ExecuteReader();
        dr.Read();
        current_user.Text = dr.GetValue(1).ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("LogIn.aspx");
    }
}
