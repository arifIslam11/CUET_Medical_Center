<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Register</title>
    <style type="text/css">
        .auto-style2 {
            width: 134px;
        }

        .auto-style3 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <h4>Registration</h4>
            <table style="font-family: Lucida Grande; color: #484F5F">
                <tr>
                    <td>First Name:
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="F_Name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="F_Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name:
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="L_Name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="L_Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender:
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="Male" runat="server" Text="Male" />
                        <asp:RadioButton ID="Female" runat="server" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td>ID:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="ID" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="ID"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Department:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="Department" runat="server">
                            <asp:ListItem>EEE</asp:ListItem>
                            <asp:ListItem>CSE</asp:ListItem>
                            <asp:ListItem>CE</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                            <asp:ListItem>URP</asp:ListItem>
                            <asp:ListItem>PME</asp:ListItem>
                            <asp:ListItem>ETE</asp:ListItem>
                            <asp:ListItem>ARCH</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Hall:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="Hall" runat="server" Width="129px">
                            <asp:ListItem>Bangabandhu Hall</asp:ListItem>
                            <asp:ListItem>Shahid Mohammmad Shah Hall</asp:ListItem>
                            <asp:ListItem>Tarek Huda Hall</asp:ListItem>
                            <asp:ListItem>Qudrate Khuda Hall</asp:ListItem>
                            <asp:ListItem>Begum Sufia Kamal Hall</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Blood Group:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="Blood_Group" runat="server">
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Image:</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="ImageUpload" runat="server" Width="176px" />
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Retype Password:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="C_pass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch" ControlToValidate="C_pass" ControlToCompare="Password"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
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

