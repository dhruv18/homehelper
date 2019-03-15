<%@ Page Title="Cart" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top: 20px;">
        <div class="col-md-9">
            <h5 class="proNameViewCart">MY CART (2 Items)</h5>
            <div class="media" style="border:1px solid #eaeaec;">
                <div class="media-left">
                    <a href="#">
                        <img width="100px" class="media-object" src="images/ProductImages/18/sf.jpg" alt="..." />
                    </a>
                </div>
                <div class="media-body">
                    <h5 class="media-heading proNameViewCart">Tiles Name</h5>
                  <p>Size : 4 S/Q</p>
                    <span class="ProPrice2View">Rs: 1200</span>
                    <span class="ProPriceViewOrignal">Rs: 1000</span>
                    <p><asp:Button ID="btnRemoveItem" CssClass="removeButton" OnClick="btnRemoveItem_Click"   runat="server" Text="REMOVE" /></p>
                
               
            </div>
        </div>
   
        </div>
        <div class="col-md-3">
        <div style="border-bottom:1px solid #eaeaec;">
            <h5 class="proNameViewCart">PRICE DETAILS</h5>
            <div>
                <label>Cart Discount</label>
                <span class="pull-right priceGray">1900</span>
            </div>
             <div>
                <label>Cart Total</label>
                <span class="pull-right priceGreen"> - 500</span>
            </div>
        </div>
            <div>
                 <div class="ProPriceView">
                <label>Total</label>
                <span class="pull-right">Rs. 1400</span>
            </div>
                <div>
                <asp:Button ID="btnBuyNow" CssClass="buyNowBtn"    runat="server" Text="BUY NOW" />
                </div>
            </div>
        </div>

    </div>

</asp:Content>

