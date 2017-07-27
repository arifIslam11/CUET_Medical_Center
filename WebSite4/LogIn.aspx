<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>LogIn</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div>
            <h4>LOGIN</h4>
            <table style="font-family: Lucida Grande; color: #484F5F">
                <tr>
                    <td>ID:</td>
                    <td>
                        <asp:TextBox ID="Id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click" />
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

