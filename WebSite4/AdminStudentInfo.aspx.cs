using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminStudentInfo : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmdd;
    SqlDataReader drr;
    protected void Page_Load(object sender, EventArgs e)
    {
        DetailsView1.Visible = false;
        Label1.Visible = false;
        btnDelete.Visible = false;
        string str = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        conn = new SqlConnection(str);
        conn.Open();
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        string id;
        int flag = 0;
        cmdd = new SqlCommand();
        cmdd.Connection = conn;
        cmdd.CommandText = "select * from Student_Info";
        drr = cmdd.ExecuteReader();
        while (drr.Read())
        {
            id = drr.GetValue(0).ToString();
            if (txtId.Text.Equals(id))
            {
                DetailsView1.Visible = true;
                Label1.Visible = true;
                btnDelete.Visible = true;
                flag = 1;
                break;
            }
        }
        if (flag == 0)
            Response.Write("<script>alert('Invalid ID')</script>");
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        cmdd = new SqlCommand();
        cmdd.Connection = conn;
        int id = Convert.ToInt32(txtId.Text);
        cmdd.CommandText = "delete from Student_Info where Id = @flag";
        cmdd.Parameters.AddWithValue("@flag", id);
        cmdd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("AdminStudentInfo.aspx");
    }
}