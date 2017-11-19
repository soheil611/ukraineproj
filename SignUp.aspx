<%@ Page Title="" Language="C#" MasterPageFile="~/AirLineSite.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="AirlineReservation.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="main">
        <section id="content">
            <article class="col1" style="width: 100%;">
                <div class="pad_1">
                    <h2>Signup</h2>
                    <div class="form_1">

                       
                        <div class="wrapper">
                            Username
            <div class="bg">
                <asp:TextBox runat="server" ID="txtlUsername" CssClass="input input2" placeholder="Username" required Style="width: 100%;"></asp:TextBox>
                <%-- <input type="text" class="input input1" value="Enter City or Airport Code" onblur="if(this.value=='') this.value='Enter City or Airport Code'" onfocus="if(this.value =='Enter City or Airport Code' ) this.value=''">--%>
            </div>
                        </div>
                        <div class="wrapper">
                           Email
            <div class="bg">
                <asp:TextBox runat="server" ID="txtEmail" CssClass="input input2" placeholder="Email" required Style="width: 100%;"></asp:TextBox>
                <%-- <input type="text" class="input input1" value="Enter City or Airport Code" onblur="if(this.value=='') this.value='Enter City or Airport Code'" onfocus="if(this.value =='Enter City or Airport Code' ) this.value=''">--%>
            </div>
                        </div>
                        <div class="wrapper">
                            Password
            <div class="bg">
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="input input2" placeholder="Password" required Style="width: 20%;"></asp:TextBox>
                <%-- <input type="text" class="input input1" value="Enter City or Airport Code" onblur="if(this.value=='') this.value='Enter City or Airport Code'" onfocus="if(this.value =='Enter City or Airport Code' ) this.value=''">--%>
            </div>
                        </div>


                        <div class="wrapper">
                            Confirm Password
            <div class="bg">
                <asp:TextBox runat="server" ID="txtConfPassword" TextMode="Password" CssClass="input input2" placeholder="Confirm Password" required Style="width: 20%;"></asp:TextBox>
                <%-- <input type="text" class="input input1" value="Enter City or Airport Code" onblur="if(this.value=='') this.value='Enter City or Airport Code'" onfocus="if(this.value =='Enter City or Airport Code' ) this.value=''">--%>
            </div>
                        </div>

                        <div class="wrapper">
                            
                            <asp:Button runat="server" ID="btnSignup" CssClass="button2" Text="Sign Up" OnClick="btnSignup_Click" />
                            <%--<a href="#" class="button2">go!</a>--%>
                        </div>
                    </div>

                </div>
            </article>

        </section>
    </div>

</asp:Content>
