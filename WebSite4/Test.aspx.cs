using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Test : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        con = new SqlConnection(str);
        con.Open();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.Connection = con;
        string f, t;
        if (dpdFromAmPm.SelectedValue == "PM")
        {
            int flag = 12 + Convert.ToInt32(dpdFrom.SelectedValue);
            f = flag.ToString();
        }
        else
            f = dpdFrom.SelectedValue;
        if (dpdToAmPm.SelectedValue == "PM")
        {
            int flag = 12 + Convert.ToInt32(dpdTo.SelectedValue);
            t = flag.ToString();
        }
        else
            t = dpdTo.SelectedValue;
        cmd.CommandText = "insert into Doctors_Schedule(doctorsId,day,dfro,dto) values ('" + txtDoctorsId.Text + "','" + dpdDay.SelectedValue + "','" + f + "','" + t + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Test.aspx");
    }
}