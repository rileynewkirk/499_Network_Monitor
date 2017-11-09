<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="One-Attribute.aspx.cs" Inherits="BSUNetworkMonitorWebpage.UI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {margin:0;}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
    background-color: #4CAF50;
    color: white;
}

</style>
</head>
<body>

<div class="topnav">
  <a href="Main.aspx">Home</a>
  <a class="active" href="One-Attribute.aspx">Search One Attribute</a>
  <a href="Multi-Attribute.aspx">Search Multi Attribute</a>
  <a href="About.aspx">About</a>
</div>
<div style="padding-left:16px"></div>

    <form id="form1" runat="server">
        <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Please search IP, Mac Address, User Nam here :<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please type correct format !" ForeColor="Red" ControlToValidate="TextBox1" ValidationExpression="^([0-9a-f]{4}\.[0-9a-f]{4}\.[0-9a-f]{4})$|\d{1,3}(\.\d{1,3}){3}|^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})|[0-9a-zA-Z]{1,50}"></asp:RegularExpressionValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btn0" runat="server" class="btn btn-success" Text="Search" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="MacAddress" HeaderText="MacAddress" SortExpression="MacAddress" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="IPAddress" HeaderText="IPAddress" SortExpression="IPAddress" />
                    <asp:BoundField DataField="Switch" HeaderText="Switch" SortExpression="Switch" />
                    <asp:BoundField DataField="Port" HeaderText="Port" SortExpression="Port" />
                    <asp:BoundField DataField="ExternalIP" HeaderText="ExternalIP" SortExpression="ExternalIP" />
                    <asp:BoundField DataField="DNS" HeaderText="DNS" SortExpression="DNS" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="WirelessController" HeaderText="WirelessController" SortExpression="WirelessController" />
                    <asp:BoundField DataField="AccessPoint" HeaderText="AccessPoint" SortExpression="AccessPoint" />
                    <asp:BoundField DataField="DescriptionForWired" HeaderText="DescriptionForWired" SortExpression="DescriptionForWired" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NetworkTrafficDataConnectionString %>" SelectCommand="SELECT * FROM [Network_Traffic_Data] WHERE (([MacAddress] = @MacAddress) OR ([IPAddress] = @IPAddress) OR ([Username] LIKE @Username + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="MacAddress" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="IPAddress" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="Username" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>

</body>
</html>
