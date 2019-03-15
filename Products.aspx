<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="thumbnails row"  style="padding-top: 50px;">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
                <div class="col-sm-3 col-md-2 " >
                    <a style="text-decoration:none;" href="ProductView.aspx?PID=<%#Eval("PID") %>">
                    <div class="thumbnail" >
                       <%-- <img src="images/ProductImages/18sf.jpg" alt="tiles" />--%>
<%--                         <a href="ProductView.aspx?PID=<%#Eval("PID") %>">--%>
                        <img src="images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>" />
                        <div class="caption">
                            <div class="ProCategory"><%#Eval("CatName") %></div>
                            <div class="ProName"><%#Eval("Pname") %></div>
                            <div class="ProPrice"><span class="ProPrice2"><%#Eval("PPrice") %></span><%#Eval("PSelPrice") %> /Sq ft</div>
                         <asp:Button ID="btnAddToCart" CssClass="mainButton" runat="server" Text="Add to cart" /></a>
                        </div>
                    </div>
               </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

