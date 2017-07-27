<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginStudent.master" AutoEventWireup="true" CodeFile="Change_Password.aspx.cs" Inherits="Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <h4>Change Password</h4>
            <table>
                <tr>
                    <td>Current Password:</td>
                    <td>
                        <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter current password" ControlToValidate="txt_cpassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>New Password:</td>
                    <td>
                        <asp:TextBox ID="txt_npassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter current password" ControlToValidate="txt_npassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="txt_conpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_npassword" ControlToValidate="txt_conpassword" ErrorMessage="Password Mismatch"></asp:CompareValidator>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter current password" ControlToValidate="txt_conpassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
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

