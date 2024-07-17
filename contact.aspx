<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section id="content">
  <div class="main">
    <div class="container_12">
      <div class="wrapper">
        <article class="grid_8">
          <h2>Contact Us!</h2>
                            <p>
                              
                                Name:- :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage=" Name Can't Blank" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                               
                            <p>
                                Email:-                                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Email Ca't Blank" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ErrorMessage="Please put Real Email" ControlToValidate="TextBox2" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </p><p> MobiMobile:-
          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="Number Can't Blank" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ErrorMessage="Please Put Mobile Number 10 digit" 
                                ControlToValidate="TextBox3" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </p> 
          <p> Message :-
          <br />
          <asp:TextBox ID="TextBox4" runat="server" Height="207px" Width="301px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                  ErrorMessage="Message Can't Blank" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
          </p>
          <p>
          
              <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
          
          </p>
        </article>
      <article class="grid_4">
          <div class="indent-top indent-left">
            <div class="wrapper p3">
              <figure class="img-indent-r"><a href="#"><img src="images/page1-img1.png" alt=""></a></figure>
              <div class="extra-wrap"> <strong class="title-1">Tell Yourong>Friends</strong><em>About</em><em>Our Furniture</em></strong> </div>
            </div>
            <h3 class="p1">Conntact Us</h3>
            <p class="prev-indent-bot">24 Hour Emergency Towing</p>
            <p class="p0">Monday - Friday: 7:30 am - 6:00</p>
            <p class="prev-indent-bot">Saturday: 7:30 am - Noon</p>
            <p class="img-indent-bot">Night Drop Available</p>
            <dl>
              <dt class="prev-indent-bot">Demolink.org 8901 Marmora Road, Glasgow, D04 89GR.</dt>
              <dd><span>Telephone:</span>+1 959 552 5963;</dd>
              <dd><span>FAX:</span>+1 959 552 5963</dd>
              <dd><span>E-mail:</span><a href="#">mail@demolink.org</a></dd>
            </dl>
          </div>
        </article>
      </div>
    </div>
  </div>
</section>

</asp:Content>

