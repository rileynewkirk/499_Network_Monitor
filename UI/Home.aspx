<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="UI.Homw" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
 
    }
</head>
<body>
    <form id="form1" runat="server">
        <div>
       <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="#">Network Search</a>
 
      <div class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
            </div>
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      
        </ul>
        
      </div>
    </nav>
  

    <main role="main" background-color: #99ff00;>
        <br/>
      <div class="jumbotron">
        <div class="container" >
          <h2 class="display-3">Network identity management</h2>
          <p> This project develops an identity management tool, that be used by Ball State’s Unified Communications Group, to identify, aggregate, and correlate information about entities of the campus network.</p>
          <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
        </div>
      </div>


    </main>
   
            <center>
      <div class="container">
            <p class="title">
                <i class="fa fa-search" aria-hidden="true"></i>
                <strong>Get your search start from here.  </strong></p>
            <p class="title">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
          </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please type correct format !" ForeColor="Red" ControlToValidate="TextBox1" ValidationExpression="^([0-9a-f]{4}\.[0-9a-f]{4}\.[0-9a-f]{4})$|\d{1,3}(\.\d{1,3}){3}|^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})|[0-9a-zA-Z]{1,50}"></asp:RegularExpressionValidator>

                <br />
&nbsp;
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                <br />

                <br />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NetworkTrafficDataConnectionString %>" SelectCommand="SELECT * FROM [Network_Traffic_Data] WHERE (([MacAddress] = @MacAddress) OR ([IPAddress] = @IPAddress) OR ([Username] LIKE @Username + '%'))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="MacAddress" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="IPAddress" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Username" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </center>
    </form>
    <footer class="container">
      <p>&copy; Ball State 2017</p>
    </footer>
        </div>
    </form>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>
