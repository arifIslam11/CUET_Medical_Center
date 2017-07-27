<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginAdmin.master" AutoEventWireup="true" CodeFile="AdminProfile.aspx.cs" Inherits="AdminProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Profile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <h4>Profile</h4>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNewName" runat="server" Text="Enter new name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNewName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>ID:</td>
                    <td>
                        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnChangePassword" runat="server" Text="ChangePassword" OnClick="btnChangePassword_Click" />
                    </td>
                </tr>
            </table>
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

