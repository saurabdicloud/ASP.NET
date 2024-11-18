<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SaurabhCloudServices.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Owl Carousel Assets -->
    <link href="../AdminAssets/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="../AdminAssets/plugins/owl-carousel/owl.theme.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content-wrapper">
        <div class="page-content">
            <div class="page-bar">
                <div class="page-title-breadcrumb">
                    <div class=" pull-left">
                        <div class="page-title">Dashboard</div>
                    </div>
                    <ol class="breadcrumb page-breadcrumb pull-right">
                        <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                            href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                        </li>
                        <li class="active">Dashboard</li>
                    </ol>
                </div>
            </div>

            <!-- start widget -->
            <div class="state-overview">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="overview-panel purple">
                            <div class="symbol">
                                <i class="fa fa-users usr-clr"></i>
                            </div>
                            <div class="value white">
                                <p class="sbold addr-font-h1" data-counter="counterup" data-value="23">0</p>
                                <p>APPOINTMENTS</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="overview-panel deepPink-bgcolor">
                            <div class="symbol">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="value white">
                                <p class="sbold addr-font-h1" data-counter="counterup" data-value="48">0</p>
                                <p>NEW STUDENTS</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="overview-panel orange">
                            <div class="symbol">
                                <i class="fa fa-heartbeat"></i>
                            </div>
                            <div class="value white">
                                <p class="sbold addr-font-h1" data-counter="counterup" data-value="14">0</p>
                                <p>TODAY'S OPT</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="overview-panel blue-bgcolor">
                            <div class="symbol">
                                <i class="fa fa-money"></i>
                            </div>
                            <div class="value white">
                                <p class="sbold addr-font-h1" data-counter="counterup" data-value="3421">0</p>
                                <span>$</span>
                                <p>University Earning</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end widget -->


            <!-- start widget -->
            <div class="row">
                <div class="col-sm-6">
                    <div class="card card-topline-green">
                        <div class="card-head">
                            <header>USER DATA</header>
                            <div class="tools">
                                <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                <a class="t-collapse btn-color fa fa-chevron-down"
                                    href="javascript:;"></a>
                                <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                            </div>
                        </div>
                        <div class="card-body ">
                            <div class="table-scrollable">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>User Name</th>
                                            <th>Password</th>
                                            <th>Edit</th>

                                        </tr>
                                    </thead>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:SaurabhConnectionString %>' SelectCommand="SELECT * FROM [User_Data]"></asp:SqlDataSource>
                                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater2_ItemCommand">
                                        <ItemTemplate>
                                            <tbody>
                                                <tr>
                                                    <td><%# Eval("User_Id") %></td>
                                                    <td><%# Eval("User_Name") %></td>
                                                    <td><%# Eval("User_Password") %></td>
                                                    <td>
                                                        <asp:LinkButton ID="BtnUserEdit" runat="server" class="" data-toggle="tooltip" CommandArgument='<%# Eval("User_Name") %>' CommandName="Edit"><i class="fa fa-check"></i></asp:LinkButton>

                                                        <%-- <asp:LinkButton ID="BtnUserEdit" runat="server" class="" data-toggle="tooltip"><i class="fa fa-check" CommandArgument='<%# Eval("User_Name") %>' CommandName="Edit"></i></asp:LinkButton>--%>

                                                        <asp:LinkButton ID="BtnUserDelete" runat="server" class="text-inverse" data-toggle="tooltip" CommandArgument='<%# Eval("User_Name") %>' CommandName="Delete"><i class="fa fa-trash"></i></asp:LinkButton>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="row1 clearfix top-report">
                        <div class="col-12-1">
                            <div class="card">
                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                    <!-- Indicators -->
                                    <ol class="carousel-indicators">
                                        <li data-target="#carousel-example-generic" data-slide-to="0"
                                            class="active"></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                    </ol>
                                    <!-- Wrapper for slides -->
                                    <div class="carousel-inner owl-carousel" role="listbox" id="owl-demo">
                                        <div class="item active">
                                            <img src="../assets/img/hero-carousel/slider-4.png"
                                                alt="">
                                        </div>

                                        <div class="item">
                                            <img src="../assets/img/hero-carousel/slider-2.jpg" alt="">
                                        </div>
                                        <div class="item">
                                            <img src="../assets/img/hero-carousel/slider-5.jpg" alt="">
                                        </div>
                                    </div>
                                    <!-- Controls -->
                                    <a class="left carousel-control" href="#carousel-example-generic"
                                        role="button" data-slide="prev"><span
                                            class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a><a class="right carousel-control" href="#carousel-example-generic"
                                        role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"
                                            aria-hidden="true"></span><span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- start new student list -->
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="card  card-box">
                        <div class="card-head">
                            <header>New Inquiry List</header>
                            <div class="tools">
                                <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                            </div>
                        </div>
                        <div class="card-body ">
                            <div class="table-wrap">
                                <div class="table-responsive">
                                    <table class="table display product-overview mb-30" id="support_table">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Name</th>
                                                <th>Email ID</th>
                                                <th>Mobile NO</th>
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:SaurabhConnectionString %>' SelectCommand="SELECT * FROM [Inquiry]"></asp:SqlDataSource>
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                                            <ItemTemplate>
                                                <tbody>

                                                    <tr>
                                                        <td><%# Eval("Id") %></td>
                                                        <td><%# Eval("Name") %></td>
                                                        <td><%# Eval("Email") %></td>
                                                        <td><%# Eval("Mobile") %></td>
                                                        <td>
                                                            <asp:LinkButton ID="BtnEdit" runat="server" class="" data-toggle="tooltip"><i class="fa fa-check"></i></asp:LinkButton>

                                                            <asp:LinkButton ID="BtnDelete" runat="server" class="text-inverse"
                                                                data-toggle="tooltip"><i
                                                                    class="fa fa-trash"></i></asp:LinkButton>
                                                            <%--<a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                            title="Edit"><i class="fa fa-check"></i></a>
                                                            <a href="javascript:void(0)" class="text-inverse"
                                                                title="Delete" data-toggle="tooltip"><i
                                                                    class="fa fa-trash"></i></a>--%>
                                                        </td>
                                                    </tr>


                                                </tbody>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end new student list -->
        </div>
    </div>
    <!-- end page content -->
    <script src="../AdminAssets/js/jquery.min.js"></script>
    <!-- owl carousel -->
    <script src="../AdminAssets/plugins/owl-carousel/owl.carousel.js"></script>
    <script src="../AdminAssets/js/pages/owl-carousel/owl_data.js"></script>
    <script src="../AdminAssets/plugins/counterup/jquery.waypoints.min.js"></script>
    <script src="../AdminAssets/plugins/counterup/jquery.counterup.min.js"></script>
</asp:Content>

