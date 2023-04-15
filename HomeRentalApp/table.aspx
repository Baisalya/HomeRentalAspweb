﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="HomeRentalApp.table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="assets1/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="assets1/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets1/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets1/fonts/fontawesome5-overrides.min.css"/>
    <title>Houses - Home Rental 🏠</title>
</head>
<body id="page-top">
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                    <div class="sidebar-brand-text mx-3"><span>Home Rental 🏠</span></div>
                </a>
                <hr class="sidebar-divider my-0"/>
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link" href="dashboard.aspx"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="profile.aspx"><i class="fas fa-user"></i><span>Profile</span></a></li>
                    <li class="nav-item"><a class="nav-link active" href="table.aspx"><i class="fas fa-table"></i><span>Houses</span></a></li>
                    
                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle me-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <form class="d-none d-sm-inline-block me-auto ms-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ..."/><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                        </form>
                        <ul class="navbar-nav flex-nowrap ms-auto">
                            <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><i class="fas fa-search"></i></a>
                                <div class="dropdown-menu dropdown-menu-end p-3 animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="me-auto navbar-search w-100">
                                        <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ..."/>
                                            <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><span class="badge bg-danger badge-counter">3+</span><i class="fas fa-bell fa-fw"></i></a>
                                    <div class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                                        <h6 class="dropdown-header">alerts center</h6><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="me-3">
                                                <div class="bg-primary icon-circle"><i class="fas fa-file-alt text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">December 12, 2022</span>
                                                <p>A new property is just been added near Bhubaneswar. Check it out!</p>
                                            </div>
                                        </a><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="me-3">
                                                <div class="bg-success icon-circle"><i class="fas fa-donate text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">February 7, 2023</span>
                                                <p>Reminder: Pay your monthly rent!</p>
                                            </div>
                                        </a><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="me-3">
                                                <div class="bg-warning icon-circle"><i class="fas fa-exclamation-triangle text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">March 4, 2023</span>
                                                <p>Profile Alert: We've noticed you have not completed your account setup.</p>
                                            </div>
                                        </a><a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                    </div>
                                </div>
                            </li>
                            
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><span class="d-none d-lg-inline me-2 text-gray-600 small">Rituparna Parija</span><img class="border rounded-circle img-profile" src="assets1/img/avatars/avatar1.jpeg"/></a>
                                    <div class="dropdown-menu shadow dropdown-menu-end animated--grow-in"><a class="dropdown-item" href="profile.html"><i class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Profile</a><a class="dropdown-item" href="#"><i class="fas fa-cogs fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Settings</a><a class="dropdown-item" href="dashboard.html"><i class="fas fa-list fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Activity log</a>
                                        <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container-fluid">
                    <h3 class="text-dark mb-4">Rent</h3>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 fw-bold">Available Places</p>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6 text-nowrap">
                                    <div id="dataTable_length" class="dataTables_length" aria-controls="dataTable"><label class="form-label">Show&nbsp;<select class="d-inline-block form-select form-select-sm">
                                                <option value="10" selected="">10</option>
                                                <option value="25">25</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                            </select>&nbsp;</label></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="text-md-end dataTables_filter" id="dataTable_filter"><label class="form-label"><input type="search" class="form-control form-control-sm" aria-controls="dataTable" placeholder="Search"/></label></div>
                                </div>
                            </div>
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>Owner's Name</th>
                                            <th>Location</th>
                                            <th>Description</th>
                                            <th>Pin</th>
                                            <th>Start date</th>
                                            <th>Price</th>
                                            <th>Check</th>
                                            <th>Book Now</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar1.jpeg">Amita Pritam</td>
                                            <td>Bhubaneswar</td>
                                            <td>3BHK</td>
                                            <td>754140</td>
                                            <td>2008/11/28</td>
                                            <td>16,700</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="amita.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar2.jpeg">Baisalya Roul</td>
                                            <td>Bhubaneswar</td>
                                            <td>2BHK</td>
                                            <td>759087</td>
                                            <td>2009/10/09<br></td>
                                            <td>12,000</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="baisalya.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar3.jpeg">Sayel Paul</td>
                                            <td>Cuttack</td>
                                            <td>3BHK</td>
                                            <td>752176</td>
                                            <td>2009/01/12<br></td>
                                            <td>18,000</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="sayel.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar4.jpeg">Monalisha Lenka</td>
                                            <td>Khurdha</td>
                                            <td>1BHK</td>
                                            <td>751234</td>
                                            <td>2012/10/13<br></td>
                                            <td>1,500</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="monalisha.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar5.jpeg">Mitali Sahoo</td>
                                            <td>Bhubaneswar</td>
                                            <td>1BHK</td>
                                            <td>756845</td>
                                            <td>2011/06/07<br></td>
                                            <td>2,850</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="mitali.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar1.jpeg">Arijit Pattnaik</td>
                                            <td>Khurdha</td>
                                            <td>2BHK</td>
                                            <td>752109</td>
                                            <td>2012/12/02<br></td>
                                            <td>7,000</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="arijit.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar2.jpeg">Rakesh Nayak<br></td>
                                            <td>Bhubaneswar</td>
                                            <td>2BHK</td>
                                            <td>750002</td>
                                            <td>2011/05/03<br></td>
                                            <td>3,500</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="rakesh.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar3.jpeg">Sailendra Parida</td>
                                            <td>Khurdha</td>
                                            <td>1BHK</td>
                                            <td>756710</td>
                                            <td>2011/12/12<br></td>
                                            <td>2,450</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="sailendra.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar4.jpeg">Soumya Ranjan Dash</td>
                                            <td>Cuttack</td>
                                            <td>1BHK</td>
                                            <td>754142</td>
                                            <td>2011/12/06<br></td>
                                            <td>1,600</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="soumya.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="assets1/img/avatars/avatar5.jpeg">Badri Prasad</td>
                                            <td>Bhubaneswar</td>
                                            <td>2BHK</td>
                                            <td>752050</td>
                                            <td>2012/03/29<br/></td>
                                            <td>14,060</td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="badri.html">&nbsp;Check</a></td>
                                            <td><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="booking.aspx"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Book</a></td>

                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td><strong>Owner's Name</strong></td>
                                            <td><strong>Location</strong></td>
                                            <td><strong>Description</strong></td>
                                            <td><strong>Pin</strong></td>
                                            <td><strong>Start date</strong></td>
                                            <td><strong>Price</strong></td>
                                            <td><strong>Check</strong></td>
                                            <td><strong>Book Now</strong></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-6 align-self-center">
                                    <p id="dataTable_info" class="dataTables_info" role="status" aria-live="polite">Showing 1 to 10 of 27</p>
                                </div>
                                <div class="col-md-6">
                                    <nav class="d-lg-flex justify-content-lg-end dataTables_paginate paging_simple_numbers">
                                        <ul class="pagination">
                                            <li class="page-item disabled"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2023</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="assets1/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets1/js/bs-init.js"></script>
    <script src="assets1/js/theme.js"></script>
</body>
</html>