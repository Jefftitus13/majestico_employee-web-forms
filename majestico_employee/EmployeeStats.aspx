<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeStats.aspx.cs" Inherits="YourNamespace.EmployeeStats" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Stats</title>
  <style>
    body {
        background-color: rgba(18, 18, 18, 0.8);
        color: #ffffff;
        font-family: Calibri, sans-serif;
        margin: 0;
        padding: 0;
    }
    .content {
        padding: 20px;
        max-width: 800px;
        margin: auto;
    }
    h1 {
        text-align: center;
        padding: 20px;
        color: #ffffff;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    th, td {
        border: 1px solid rgba(255, 255, 255, 0.2);
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: rgba(50, 50, 50, 0.8);
        color: #ffffff;
    }
    tr:nth-child(even) {
        background-color: rgba(25, 25, 25, 0.8);
    }
</style>

</head>
<body>
    <div class="content">
        <h1>Employee Stats</h1>
        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
        <table>
            <tr>
                <th>Name</th>
                <td><asp:Label ID="lblName" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <th>Height</th>
                <td><asp:Label ID="lblHeight" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <th>Sex</th>
                <td><asp:Label ID="lblSex" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <th>Performance</th>
                <td><asp:Label ID="lblPerformance" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <th>Achievements</th>
                <td><asp:Label ID="lblAchievements" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
    </div>
</body>
</html>
