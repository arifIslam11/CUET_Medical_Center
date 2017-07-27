<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginAdmin.master" AutoEventWireup="true" CodeFile="AdminStudentInfo.aspx.cs" Inherits="AdminStudentInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Student Info</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <h4>Search</h4>
            <table>
                <tr>
                    <td>Enter Student ID:</td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtId"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: right">
                        <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Student Profile:"></asp:Label>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Hall" HeaderText="Hall" SortExpression="Hall" />
                    <asp:BoundField DataField="Blood_Group" HeaderText="Blood Group" SortExpression="Blood_Group" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                </Fields>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student_Info] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtId" Name="Id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure?');" />
        </div>
    </div>
</asp:Content>

