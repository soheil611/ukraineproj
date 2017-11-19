<%@ Page Title="" Language="C#" MasterPageFile="~/AirLineSite.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="AirlineReservation.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="main">
        <section id="content">
            <article class="col1" style="width: 100%;">
                <div class="pad_1">
                    <h2>Signin</h2>
                    <div class="form_1">

                       
                        <div class="wrapper">
                            Username
            <div class="bg">
                <asp:TextBox runat="server" ID="txtlUsername" CssClass="input input2" placeholder="Username" required Style="width: 100%;"></asp:TextBox>
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
                            
                            <asp:Button runat="server" ID="btnSignin" CssClass="button2" Text="Sign In" OnClick="btnSignin_Click" />
                            <%--<a href="#" class="button2">go!</a>--%>
                        </div>
                    </div>

                </div>
            </article>

        </section>
    </div>

</asp:Content>
