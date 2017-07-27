<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginAdmin.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <h4>Programs</h4>
            <table>
                <tr>
                    <td>Doctors ID:</td>
                    <td>
                        <asp:TextBox ID="txtDoctorsId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Day:</td>
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
                    <td>From:</td>
                    <td>
                        <asp:DropDownList ID="dpdFrom" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                         <asp:DropDownList ID="dpdFromAmPm" runat="server">
                            <asp:ListItem>AM</asp:ListItem>
                            <asp:ListItem>PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>To:</td>
                    <td>
                        <asp:DropDownList ID="dpdTo" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                         <asp:DropDownList ID="dpdToAmPm" runat="server">
                            <asp:ListItem>AM</asp:ListItem>
                            <asp:ListItem>PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <h4>Therapy</h4>
            <h2>You can replace all this text with your own text</h2>
            <ul>
                <li>This is just a place holder, so you can see what the site would look like.</li>
                <li>This is just a place holder</li>
                <li>You can remove any link to our website from this website template.</li>
                <li>This is just a place holder</li>
                <li>You&#39;re free to use this website template without linking back to us.</li>
            </ul>
            <span><a href="programs.html">Learn More</a></span>
        </div>
    </div>
</asp:Content>

