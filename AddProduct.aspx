<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add products</h2>
            <hr />
            <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ControlToValidate="txtPName" ErrorMessage="Name is required !"></asp:RequiredFieldValidator>
                          </div>
                    </div>
             <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price is required !"></asp:RequiredFieldValidator>
                          </div>
                    </div>
            <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="SelPrice"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSelPrice" CssClass="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ControlToValidate="txtSelPrice" ErrorMessage="SelPrice is required !"></asp:RequiredFieldValidator>
                          </div>
                    </div>
            <div class="form-group">
                        <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlCategory"  CssClass="form-control" runat="server"></asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ControlToValidate="ddlCategory" InitialValue="0" ErrorMessage="Category is required !"></asp:RequiredFieldValidator>
                          </div>
                    </div>
            <div class="form-group">
                        <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ControlToValidate="txtDescription" ErrorMessage="Description is required !"></asp:RequiredFieldValidator>
                          </div>
                    </div>
            <div class="form-group">
                        <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                        <div class="col-md-3">
                            <asp:FileUpload ID="fuImage" CssClass="form-control"  runat="server" />
                          <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ControlToValidate="fuImage" ErrorMessage="image is required !"></asp:RequiredFieldValidator>--%>
                          </div>
                 <div class="col-md-3">
                            <asp:FileUpload ID="FuImage1" CssClass="form-control"  runat="server" />
                          <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ControlToValidate="fuImage" ErrorMessage="image is required !"></asp:RequiredFieldValidator>--%>
                          </div>
                    </div>
            <div class="form-group">
                       <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-default" Text="Submiit" OnClick="btnAdd_Click" />
                            
                        </div>
                    </div>


        </div>
    </div>
</asp:Content>

