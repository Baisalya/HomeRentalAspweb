<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="HomeRentalApp.booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="assets1/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="assets1/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets1/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets1/fonts/fontawesome5-overrides.min.css"/>
    <title>Booking - Home Rental 🏠</title>
</head>
<body class="bg-gradient-primary">
    <div class="container">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-flex">
                        <div class="flex-grow-1 bg-register-image" style="background-image: url(&quot;assets1/img/dogs/image2.jpeg&quot;);"></div>
                    </div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Book your home now!</h4>
                            </div>
                            <form class="user" id="form3" action="booking.aspx" method="post">
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="exampleFirstName" placeholder="First Name" name="first_name"/></div>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="exampleFirstName" placeholder="Last Name" name="last_name"/></div>
                                </div>
                                <div class="mb-3"><input class="form-control form-control-user" type="email" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Email Address" name="email"/></div>
                                <div class="mb-3"><input class="form-control form-control-user" type="text" id="exampleInputAddress" aria-describedby="addressHelp" placeholder="Current Address" name="address"/></div>

                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="number" id="exampleNumberInput" placeholder="Mobile No." name="mobile"/></div>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="number" id="exampleGuestInput" placeholder="Number of Guest" name="guest"/></div>
                                </div>
                                
                                
                                <button class="btn btn-primary d-block btn-user w-100" type="submit">Confirm Booking</button>
                                
                                <hr>
                            </form>
                            <div class="text-center"><a class="small" href="dashboard.html">Go back</a></div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets1/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets1/js/bs-init.js"></script>
    <script src="assets1/js/theme.js"></script>
</body>
</html>
