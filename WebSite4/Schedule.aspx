<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginStudent.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <div style="width:400px">
            <h4>Doctors List</h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Doctors Name" SortExpression="name" />
                    <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [qualification] FROM [DoctorsInfo]"></asp:SqlDataSource>
        </div>
        <div>
            <h4>Diagnostic Services</h4>
            <ul>
                <li>X-Ray</li>
                <li>Ultrasound</li>
                <li>Mammography</li>
                <li>MRI</li>
                <li>CT scan</li>
            </ul>
            <h4>Blood tests:</h4>
            <ul>
                <li>Blood Sugar</li>
                <li>Lipid profile</li>
                <li>Liver Function Test</li>
                <li>Bilirubin</li>
            </ul>
        </div>
    </div>
</asp:Content>

