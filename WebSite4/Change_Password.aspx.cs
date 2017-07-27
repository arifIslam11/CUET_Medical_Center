using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Change_Password : System.Web.UI.Page
{
    string strConnString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
    string str = null;
    SqlCommand com;
    byte up;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select * from Student_Info ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            if (txt_cpassword.Text == reader["Pass"].ToString())
                up = 1;
        }
        reader.Close();
        con.Close();
        if (up == 1)
        {
            con.Open();
            str = "update Student_Info set Pass=@Pass where Id='" + Session["user"].ToString() + "'";
            com = new SqlCommand(str, con);
            com.Parameters.Add(new SqlParameter("@Pass", SqlDbType.VarChar, 50));
            com.Parameters["@Pass"].Value = txt_npassword.Text;
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("LogIn.aspx");
        }
        else
            Response.Write("<script>alert('Please Enter Current Correct Password');</script>");
    }
}