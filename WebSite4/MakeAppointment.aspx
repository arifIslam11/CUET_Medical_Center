<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginStudent.master" AutoEventWireup="true" CodeFile="MakeAppointment.aspx.cs" Inherits="MakeAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Make Appointment</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <h4>Make Appointment</h4>
            <table>
                <tr>
                    <td>Doctors Name:</td>
                    <td>
                        <asp:DropDownList ID="dpdDoctorsName" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Select Date:</td>
                    <td>
                        <asp:TextBox ID="txtSelectDate" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:ImageButton ID="ibtnCalender"  Height="20px"  Width="30px" ImageUrl="~/images/iStock_000012206122XSmall.jpg" runat="server" OnClick="ibtnCalender_Click"  />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="220px" OnDayRender="Calendar1_DayRender">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <h4>Enter Information</h4>
                <table>
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Id:</td>
                        <td>
                            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Cell Number:</td>
                        <td>
                            <asp:TextBox ID="txtCellNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnMakeAppointment" runat="server" Text="Submit" OnClick="btnMakeAppointment_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

