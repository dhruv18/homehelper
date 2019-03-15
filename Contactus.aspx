﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">Name</label>
                                <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Enter name"  runat="server"></asp:TextBox>
<%--                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />--%>
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Enter email"  runat="server"></asp:TextBox>

                               <%-- <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" />--%></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
        <%--<asp:TextBox ID="txtSubject" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>--%>
        <asp:DropDownList ID="drpSubject" CssClass="form-control" runat="server">
                              <asp:ListItem Value="0">Choose One:</asp:ListItem>
                              <asp:ListItem Value="01">General Customer Service</asp:ListItem>
                              <asp:ListItem Value="02">Suggestions</asp:ListItem>
                              <asp:ListItem Value="03">Product Support</asp:ListItem>
                          



        </asp:DropDownList>
                            <%--<select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>--%>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
            <asp:TextBox ID="txtMessag" CssClass="form-control" Rows="9" cols="25" placeholder="Message" runat="server" TextMode="MultiLine"></asp:TextBox>
                           <%-- <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>--%>
                        </div>
                    </div>
                    <div class="col-md-12">
                       <%-- <button type="submit" class="btn btn-primary pull-left" id="btnContactUs">
                            Send Message</button>--%>
        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary pull-left" Text="Send Message" OnClick="btnSubmit_Click" />
                    &nbsp;<asp:Label ID="lebMessage" CssClass="text-success" runat="server" ></asp:Label>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Silver Oak.</strong><br>
                Silver Oak College Of Engineering &amp; Technology<br>
                Nr.Bhavik Publications,Opp.Bhagwat Vidyapith,<br>
                S.G.Highway Gota,Ahmedavad-382481.<br>
                <abbr title="Phone">
                    P:</abbr>
                (079)-66046304
            </address>
            <address>
                <strong>Full Name</strong><br>
                <a href="mailto:#">first.last@example.com</a>
            </address>
            </form>
        </div>
    </div>
</div>



</asp:Content>

