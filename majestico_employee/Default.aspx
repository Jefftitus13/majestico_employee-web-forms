<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YourNamespace.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employees of Majestico</title>
    <style>
        body {
            background-color: #fafcfb;
            color: #000000;
            font-family: 'Times New Roman', sans-serif;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #0c0d0d;
        }
        .grid-container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        .grid-view {
            width: 100%;
            background-color: rgba(33, 33, 33, 0.8);
            color: #ffffff;
            border-collapse: collapse;
        }
        .grid-view th {
            background-color: rgba(50, 50, 50, 0.8);
            color: #ffffff;
            padding: 10px;
        }
        .grid-view td {
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 10px;
        }
        .grid-view tr:nth-child(even) {
            background-color: rgba(25, 25, 25, 0.8);
            color: #ffffff;
        }
        .grid-view tr:hover {
            background-color: #ccccc4;
            color: black;
        }
        .grid-view .view-button {
            color: #0c0d0d;
            text-decoration: none;
            padding: 5px 10px;
            border: 1px solid #282929;
            border-radius: 3px;
            transition: background-color 0.3s, color 0.3s;
        }
        .grid-view .view-button:visited {
            color: #0c0d0d;
        }
        .grid-view .view-button:hover {
            color: whitesmoke;
            background-color: #282929;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Employees of Majestico</h1>
        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="employee_id" CssClass="grid-view" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="employee_id" HeaderText="Employee ID" ReadOnly="True" />
                    <asp:BoundField DataField="First_Name" HeaderText="First Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="ViewButton" runat="server" Text="View" CommandName="Select" CssClass="view-button" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

