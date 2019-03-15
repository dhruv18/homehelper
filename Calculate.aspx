<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Calculate.aspx.cs" Inherits="Calculate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   

    
 <div class="container">
            <div class="form-horizontal">
                <h2>Calculate Materials</h2>
                <hr />
                <h4>All tiles are cover 12 foot per Box. </h4>
                <div class="form-group">
                 <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label"  Text="Enter Height"></asp:Label>
                    <div class="col-md-3">
                    <asp:TextBox ID="txtHeight" placeholder="Value in foot" CssClass="form-control" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="requiredfieldvalidator1" CssClass="text-danger" runat="server" ErrorMessage="enter the valid Height" ControlToValidate="tbEmailId"></asp:RequiredFieldValidator>--%>
                </div>

                     <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label"  Text="Enter Length"></asp:Label>
                    <div class="col-md-3">
                    <asp:TextBox ID="txtLength" CssClass="form-control" placeholder="Value in foot" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="requiredfieldvalidator2" CssClass="text-danger" runat="server" ErrorMessage="enter the valid width" ControlToValidate="tbEmailId"></asp:RequiredFieldValidator>--%>
                </div>
                    </div>

                    <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnCalculate" runat="server" CssClass="btn btn-default" Text="Calculate" OnClick="btnCalculate_Click" />
                    &nbsp;
                    <asp:Label ID="lebresult" CssClass="text-success" runat="server" Font-Bold="True" Font-Size="20pt"></asp:Label>
                </div>
                </div>
         
            <%--<div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Your Email"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requiredfieldvalidator1" CssClass="text-danger" runat="server" ErrorMessage="enter the valid email id" ControlToValidate="tbEmailId"></asp:RequiredFieldValidator>
                </div>
                </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="send" OnClick="btPassRec_Click" />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </div>
            </div>--%>
              </div>
        </div>
</asp:Content>
