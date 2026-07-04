<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="SkillAssessment2.ManageUsers" %>
<!-- Answer for Question 3 : Webform with sorting, edit, delete with stored procedure -->
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Manage Users</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Manage Users</h2>
        
        <!-- Answer for Question 4 : Edit & Delete function auto sync back to the database -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="usp_User_GetAll" SelectCommandType="StoredProcedure"
            UpdateCommand="usp_User_Update" UpdateCommandType="StoredProcedure"
            DeleteCommand="usp_User_Delete" DeleteCommandType="StoredProcedure">
            
            <UpdateParameters>
                <asp:Parameter Name="UserID" Type="Int64" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="UserNo" Type="Int32" />
            </UpdateParameters>
            
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="Int64" />
            </DeleteParameters>
        </asp:SqlDataSource>

    <asp:GridView ID="GridView1" 
        runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="UserID"
        DataSourceID="SqlDataSource1"
        AllowSorting="True"
        CellPadding="4"
        ShowHeaderWhenEmpty="True"
        EmptyDataText="No records found."
        OnPreRender="GridView1_PreRender">

    <Columns>
        <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="UserNo" HeaderText="UserNo" SortExpression="UserNo" />
        <asp:BoundField DataField="CreateDate" HeaderText="Create Date" ReadOnly="True" SortExpression="CreateDate" />
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" HeaderText="Actions" />
    </Columns>

</asp:GridView>

        <p>
            <asp:Button ID="btnHome" runat="server" Text="Back to Home" PostBackUrl="~/Default.aspx" />
        </p>
    </form>
</body>
</html>