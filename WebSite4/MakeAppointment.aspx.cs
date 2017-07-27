using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MakeAppointment : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlDataReader drr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Panel1.Visible = false;
        cmd = new SqlCommand("select Id, name from DoctorsInfo", con);
        con.Open();

        dpdDoctorsName.DataSource = cmd.ExecuteReader();
        dpdDoctorsName.DataTextField = "name";
        dpdDoctorsName.DataValueField = "Id";
        dpdDoctorsName.DataBind();

        con.Close();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from Doctors_Schedule", con);
        con.Open();
        drr = cmd.ExecuteReader();

        string dId = dpdDoctorsName.SelectedValue.ToString();
        string dDay = ViewState["flag"].ToString();
        int flag = 0;
       

        while (drr.Read())
        {
            string doctors_id = drr.GetValue(1).ToString();
            string day = drr.GetValue(2).ToString();
           
            if (dId.Equals(doctors_id) && dDay.Equals(day))
            {
                flag = 1;
                Panel1.Visible = true;
                break;
            }
        }

        if (flag == 0)
            Response.Write("<script>alert('This doctor is not available at the selected day');</script>");
        con.Close();
    }
    protected void ibtnCalender_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtSelectDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        ViewState["flag"] = Calendar1.SelectedDate.ToString("dddd");
        Calendar1.Visible = false;
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime d1 = DateTime.Now;
        if (e.Day.Date <= d1)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.Red;
            e.Cell.Font.Bold = true;
            e.Cell.Text = "X";
            e.Cell.ToolTip = "Not available";
        }
        else
            e.Cell.ToolTip = "Available";
    }
    protected void btnMakeAppointment_Click(object sender, EventArgs e)
    {
        SqlDataReader drr1;
        SqlCommand cmd1 = new SqlCommand("select * from appointment_information", con);
        con.Open();
        drr1 = cmd1.ExecuteReader();
        string day = txtSelectDate.Text.ToString();
        int count = 0;
        while (drr1.Read())
        {
            string appDate = drr1.GetValue(4).ToString();
            if (day.Equals(appDate))
                count++;
        }
        count++;
        con.Close();
        if (count <= 8)
        {
            SqlDataReader drr2;
            SqlCommand cmd2 = new SqlCommand("select * from Doctors_Schedule", con);
            con.Open();
            drr2 = cmd2.ExecuteReader();
            string docId = dpdDoctorsName.SelectedValue.ToString();
            string docDay = ViewState["flag"].ToString();
            string time = null;
            while (drr2.Read())
            {
                string doctors_id = drr2.GetValue(1).ToString();
                string day1 = drr2.GetValue(2).ToString();
                if (docId.Equals(doctors_id) && docDay.Equals(day1))
                {
                    time = drr2.GetValue(3).ToString() + " to " + drr2.GetValue(4).ToString();
                    break;
                }
            }
            con.Close();
            string studentId = txtId.Text.ToString();
            string studentName = txtName.Text.ToString();
            string cellNumber = txtCellNumber.Text.ToString();
            SqlCommand cmd3 = new SqlCommand();
            cmd3.Connection = con;
            cmd3.CommandText = "insert into appointment_information(student_id,student_name,cell_number,appointment_date,appointment_time,token_number) values ('" + studentId + "','" + studentName + "','" + cellNumber + "','" + day + "','" + time + "','" + count + "')";
            con.Open();
            cmd3.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Your token number is " + count + " and visiting time is " + time;
            Label1.Visible = true;
        }
        else
            Response.Write("<script>alert('Already booked');</script>");
    }
}