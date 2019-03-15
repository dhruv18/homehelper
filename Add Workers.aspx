<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Add Workers.aspx.cs" Inherits="Add_Workers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Workers</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="labName" CssClass="col-md-2" runat="server" Text="Name :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="textName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labLocation" CssClass="col-md-2" runat="server" Text="Location :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="textLocation" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labMobile" CssClass="col-md-2" runat="server" Text="Mobile No :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="textMobile" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddWorker" CssClass="btn btn-default" OnClick="btnAddWorker_Click" runat="server" Text="Add" />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
        <h1>Workers</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Workers</div>

            <asp:Repeater ID="rptWorkers" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Location</th>
                                <th>Rate/perday</th>
                                <th>Mobile no</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>

                    <tr>
                        <th><%# Eval("id") %></th>
                        <td><%# Eval("W_Name") %></td>
                        <td><%# Eval("W_Location") %></td>
                        <td><%# Eval("W_Rate/perday") %></td>
                        <td><%# Eval("W_ContectNo") %></td>
                        <td>Edit</td>
                    </tr>

                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>

            <!-- Table -->

        </div>
    </div>
</asp:Content>

