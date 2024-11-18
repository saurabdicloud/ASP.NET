<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserMgmt.aspx.cs" Inherits="SaurabhCloudServices.Admin.UserMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start page content -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <div class="page-bar">
                <div class="page-title-breadcrumb">
                    <div class=" pull-left">
                        <div class="page-title">Add User</div>
                    </div>
                    <ol class="breadcrumb page-breadcrumb pull-right">
                        <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                            href="Dashboard.aspx">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                        </li>

                        <li class="active">User Management</li>
                    </ol>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="card card-box">
                        <div class="card-head">
                            <header>
                                Add User
                            </header>
                            <button id="panel-button"
                                class="mdl-button mdl-js-button mdl-button--icon pull-right"
                                data-upgraded=",MaterialButton">
                                <i class="material-icons">more_vert</i>
                            </button>
                            <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                                data-mdl-for="panel-button">
                                <li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action
                                </li>
                                <li class="mdl-menu__item"><i class="material-icons">print</i>Another action
                                </li>
                                <li class="mdl-menu__item"><i class="material-icons">favorite</i>Something else
										here</li>
                            </ul>
                        </div>
                        <div class="card-body " id="bar-parent">
                            <div>

                                <div class="form-group">
                                    <label for="simpleFormEmail">User Name</label>
                                    <asp:TextBox ID="TxtUserName" runat="server" CssClass="form-control" type="email" placeholder="Enter User Name" ></asp:TextBox>
                                   
                                </div>
                                <div class="form-group">
                                    <label for="simpleFormPassword">Password</label>
                                     <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" type="password" placeholder="Password"></asp:TextBox>
                                    <%--<input type="password" class="form-control" id="simpleFormPassword"
                                        placeholder="Password">--%>
                                </div>
                                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="BtnSubmit_Click" />
                               <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


</asp:Content>
