<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="drpSubject" CssClass="form-control" runat="server">
                              <asp:ListItem Value="0">Month</asp:ListItem>
                              <asp:ListItem Value="01">January</asp:ListItem>
                              <asp:ListItem Value="02">February</asp:ListItem>
                              <asp:ListItem Value="03">March</asp:ListItem>
                              <asp:ListItem Value="04">April</asp:ListItem>

        </asp:DropDownList>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
        <p class="btn btn-default" role="button">view</p>
    </form>
</body>
</html>
