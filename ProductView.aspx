﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding-top: 50px">
        <div class="col-md-5">
            <div style="max-width: 480px" class="thumbnail">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <%--<li data-target="#carousel-example-generic" data-slide-to="2"></li>--%>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="rptImages" runat="server">
                            <ItemTemplate>
                               
                                <div class="item <%# GetActiveClass(Container.ItemIndex) %>">
                                   
                                    <img   src="images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" style="cursor:pointer">

                                </div>
                            </ItemTemplate>

                        </asp:Repeater>
                    </div>
                   

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <asp:Repeater ID="rptdata" runat="server">
                <ItemTemplate>
                    <div class="divDet1">
                        <h1 class="proNameView"><%#Eval("Pname") %></h1>
                        <span class="ProPriceView">₹ <%#Eval("PPrice") %></span>
                        <p class="ProPriceViewOrignal">₹ <%#Eval("PSelPrice") %>    Sell Price</p>
                    </div>


                    <div class="divDet1">
                        <h5 class="h5Size">Description</h5>
                        <p>
                            <%#Eval("PDescription") %>
                        </p>
                    </div>
                    <div>
                        <h5 class="h5Size">SIZE</h5>
                        <div>
                            <asp:RadioButtonList ID="rblSize" runat="server" RepeatDirection="Vertical" RepeatLayout="Flow">
                                <asp:ListItem Value="1" Text="1 Squer Feet"></asp:ListItem>
                                <asp:ListItem Value="2" Text="2 Squer Feet"></asp:ListItem>
                                <asp:ListItem Value="4" Text="4 Squer Feet"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="divDet1">
                        <asp:Button ID="btnAddTOCart" CssClass="mainButton" OnClick="btnAddTOCart_Click" runat="server" Text="ADD TO CART" />
                        <asp:Label ID="lblAlerttext" runat="server" ></asp:Label>
                    </div>
                    <div class="divDet1">
                        <p>Free Delivery</p>
                        <p>2 Days Returns</p>
                        <p>Cash On Delivery</p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

