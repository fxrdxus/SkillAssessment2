<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SkillAssessment2.Register" %>
<!-- Answer for Question 2 : Webform to add new record with stored procedure -->
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Register</h2>
        <div>
            <label>User Name:</label>
            <asp:TextBox ID="txtUserName" runat="server" MaxLength="20"></asp:TextBox>
        </div>
        <br />
        <div>
            <label>User No:</label>
            <asp:TextBox ID="txtUserNo" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" />
        <br /><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>

        <p>
            <asp:Button ID="btnHome" runat="server" Text="Back to Home" PostBackUrl="~/Default.aspx" />
        </p>

    </form>
</body>
</html>