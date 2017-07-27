using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminEditSchedule : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmdd;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Label1.Visible = false;
        Button2.Visible = false;
        Label2.Visible = false;
        dpdDay.Visible = false;
        Label3.Visible = false;
        txtFrom.Visible = false;
        Label4.Visible = false;
        txtTo.Visible = false;
        Button3.Visible = false;
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        Label1.Visible = true;
        Button2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        Button2.Visible = false;
        Label2.Visible = true;
        dpdDay.Visible = true;
        Label3.Visible = true;
        txtFrom.Visible = true;
        Label4.Visible = true;
        txtTo.Visible = true;
        Button3.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        conn = new SqlConnection(str);
        conn.Open();
        cmdd = new SqlCommand();
        cmdd.Connection = conn;
        int id = Convert.ToInt32(doctorId.Text);
        string day = dpdDay.SelectedValue;
        string newFrom = txtFrom.Text;
        string newTo = txtTo.Text;
        cmdd.CommandText = "update Doctors_Schedule set doctorsId = @newId where day = @newDay and dfro = @nFrom and dto = @nTo";
        cmdd.Parameters.AddWithValue("@newId", id);
        cmdd.Parameters.AddWithValue("@newDay", day);
        cmdd.Parameters.AddWithValue("@nFrom", newFrom);
        cmdd.Parameters.AddWithValue("@nTo", newTo);
        cmdd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Data updated successfully');</script>");
    }
}