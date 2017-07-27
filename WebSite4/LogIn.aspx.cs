using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LogIn : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        con = new SqlConnection(str);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ID, Pass;
        int f = 1;

        cmd = new SqlCommand();
        cmd.Connection = con;

        string flag = Id.Text.ToString();
        int length = flag.Length;

        if (length == 7)
        {
            cmd.CommandText = "select * from Student_Info";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ID = dr.GetValue(0).ToString();
                Pass = dr.GetValue(7).ToString();
                if (Id.Text.Equals(ID) && Password.Text.Equals(Pass))
                {
                    Session["user"] = Id.Text.ToString();
                    f = 0;
                    break;
                }
            }
        }
        else if (length == 10)
        {
            cmd.CommandText = "select * from admin";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ID = dr.GetValue(0).ToString();
                Pass = dr.GetValue(2).ToString();
                if (Id.Text.Equals(ID) && Password.Text.Equals(Pass))
                {
                    Session["user"] = Id.Text.ToString();
                    f = 2;
                    break;
                }
            }
        }
        else
            Response.Write("<script>alert(' Sorry ID or Password is missmatch');</script>");

        if (f == 0)
            Response.Redirect("AfterLoginStudentHome.aspx");
        else if (f == 2)
            Response.Redirect("AdminProfile.aspx");
        else
            Response.Write("<script>alert(' Sorry ID or Password is missmatch');</script>");
    }
}