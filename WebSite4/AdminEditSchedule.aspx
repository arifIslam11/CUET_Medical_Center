<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginAdmin.master" AutoEventWireup="true" CodeFile="AdminEditSchedule.aspx.cs" Inherits="AdminEditSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Edit Schedule</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <h4>Doctors Schedule:</h4>
            <table>
                <tr>
                    <td>Doctors ID:</td>
                    <td>
                        <asp:TextBox ID="doctorId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="doctorId"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Show Schedule" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Schedule:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" />
                                <asp:BoundField DataField="dfro" HeaderText="From" SortExpression="dfro" />
                                <asp:BoundField DataField="dto" HeaderText="To" SortExpression="dto" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [day], [dfro], [dto] FROM [Doctors_Schedule] WHERE ([doctorsId] = @doctorsId)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="doctorId" Name="doctorsId" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Edit Schedule" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Day:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="dpdDay" runat="server">
                            <asp:ListItem>Friday</asp:ListItem>
                            <asp:ListItem>Saturday</asp:ListItem>
                            <asp:ListItem>Sunday</asp:ListItem>
                            <asp:ListItem>Monday</asp:ListItem>
                            <asp:ListItem>Tuesday</asp:ListItem>
                            <asp:ListItem>Wednesday</asp:ListItem>
                            <asp:ListItem>Thursday</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="From:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="To:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

