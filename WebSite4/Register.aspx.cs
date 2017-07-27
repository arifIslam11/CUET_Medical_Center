using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
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
        string path, Gender;
        if (Female.Checked)
            Gender = "Female";
        else
            Gender = "Male";
        if (ImageUpload.HasFile)
        {
            string ext = System.IO.Path.GetExtension(ImageUpload.FileName);
            if (ext.Equals(".jpg") || ext.Equals(".png"))
            {
                path = "~/Picture/" + ImageUpload.FileName;
                ImageUpload.SaveAs(MapPath(path));
                cmd.CommandText = "insert into Student_Info(Id,First_Name,Last_Name,Gender,Department,Hall,Blood_Group,Pass,Image) values ('" + ID.Text + "','" + F_Name.Text + "','" + L_Name.Text + "','" + Gender + "','" + Department.SelectedValue + "','" + Hall.SelectedValue + "','" + Blood_Group.SelectedValue + "','" + Password.Text + "','" + path + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LogIn.aspx");
            }
            else
                Response.Write("<script>alert('Upload correct file')</script>");
        }
        else
            Response.Write("<script>alert('Upload photo');</script>");
    }
}