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
                            <form id="form1" runat="server">
    <div class="row mb-3">
        <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="date" id="txtStartDate" name="start-date" runat="server" placeholder="start-date"  /></div>
        <div class="col-sm-6"><input class="form-control form-control-user" type="date" id="txtEndDate" name="end-date" runat="server" placeholder="end-date" readonly  /></div>
    </div>
    <div class="mb-3"><asp:TextBox class="form-control form-control-user" type="text" id="txtPricePerMonth" runat="server" aria-describedby="emailHelp"  ReadOnly="true"/></div>
    <div class="mb-3"><asp:TextBox class="form-control form-control-user" type="text" id="txttotalrent" runat="server" aria-describedby="emailHelp"  ReadOnly="true"/></div>

    <div class="mb-3"><asp:TextBox class="form-control form-control-user" type="text"  id="txtHomeName" runat="server" aria-describedby="addressHelp" placeholder="Current Address"  ReadOnly="true"/></div>

    <div class="row mb-3">
        <div class="col-sm-6 mb-3 mb-sm-0"><div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="number" id="exampleNumberInput" placeholder="Mobile No." name="mobile" runat="server" /></div></div>
        <div class="col-sm-6">    <div class="col-sm-6"><input class="form-control form-control-user" type="number" id="noofmonths" placeholder="Number of Months" name="months" runat="server" /></div></div>
    </div>
                                
       <asp:Button ID="btnConfirmBooking" runat="server" Text="Confirm Booking" OnClick="btnConfirmBooking_Click" CssClass="btn btn-primary d-block btn-user w-100" />
                         
                                
    <hr>
</form>

<script>
    // get the start date and end date input elements
    var startDateInput = document.getElementById("txtStartDate");
    var endDateInput = document.getElementById("txtEndDate");

    // get the price per month and total rent input elements
    var pricePerMonthInput = document.getElementById("txtPricePerMonth");
    var totalRentInput = document.getElementById("txttotalrent");

    // handle the start date change event
    startDateInput.addEventListener("change", function () {
        updateEndDate();
    });

    // handle the number of months change event
    var noOfMonthsInput = document.getElementById("noofmonths");
    noOfMonthsInput.addEventListener("change", function () {
        updateEndDate();
        updateTotalRent();
    });

    // function to update the end date based on the start date and number of months
    function updateEndDate() {
        var startDate = new Date(startDateInput.value);
        var noOfMonths = parseInt(noOfMonthsInput.value);
        var endDate = new Date(startDate.getFullYear(), startDate.getMonth() + noOfMonths, 0);
        endDateInput.value = endDate.toISOString().slice(0, 10);
    }

    // function to update the total rent based on the price per month and number of months
    function updateTotalRent() {
        var pricePerMonth = parseFloat(pricePerMonthInput.value);
        var noOfMonths = parseInt(noOfMonthsInput.value);
        var totalRent = pricePerMonth * noOfMonths;
        totalRentInput.value = totalRent.toFixed(2);
    }
</script>


                            <div class="text-center"><a clahtmlsmall" href="dashboard.aspx">Go back</a></div>
                            
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
