using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminProfile : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmdd;
    SqlDataReader drr;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblNewName.Visible = false;
        txtNewName.Visible = false;
        btnSubmit.Visible = false;
        lblId.Text = Session["user"].ToString();
        string str = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        conn = new SqlConnection(str);
        conn.Open();
        cmdd = new SqlCommand();
        cmdd.Connection = conn;
        int id = Convert.ToInt32(Session["user"]);
        cmdd.CommandText = "select name from admin where Id = @flag";
        cmdd.Parameters.AddWithValue("@flag", id);
        drr = cmdd.ExecuteReader();
        drr.Read();
        lblName.Text = drr.GetValue(0).ToString();
        conn.Close();
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        lblNewName.Visible = true;
        txtNewName.Visible = true;
        btnSubmit.Visible = true;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string str = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        conn = new SqlConnection(str);
        conn.Open();
        cmdd = new SqlCommand();
        cmdd.Connection = conn;
        int id = Convert.ToInt32(Session["user"]);
        string newName = txtNewName.Text.ToString();
        cmdd.CommandText = "update admin set name = @newName where Id = @flag";
        cmdd.Parameters.AddWithValue("@newName", newName);
        cmdd.Parameters.AddWithValue("@flag", id);
        cmdd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("AdminProfile.aspx");
    }
    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePasswordAdmin.aspx");
    }
}