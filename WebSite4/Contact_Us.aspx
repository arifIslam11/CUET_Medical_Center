<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Contact_Us.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Contact</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <h4>Send a message</h4>
            <table>
                <tr>
                    <td>To</td>
                    <td>
                        <asp:TextBox ID="to_txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td>
                        <asp:TextBox ID="sub_txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Body</td>
                    <td>
                        <asp:TextBox ID="bod_txt" runat="server" Height="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gmail ID</td>
                    <td>
                        <asp:TextBox ID="gma_txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="pas_txt" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
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

