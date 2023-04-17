<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HomeRentalApp.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto"/>
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css"/>
    <link rel="stylesheet" href="assets/css/Header-Dark.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css"/>
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css"/>
    <link rel="stylesheet" href="assets/css/Newsletter-Subscription-Form.css"/>
    <link rel="stylesheet" href="assets/css/Responsive-Form-1.css"/>
    <link rel="stylesheet" href="assets/css/Responsive-Form.css"/>
    <link rel="stylesheet" href="assets/css/vanilla-zoom.min.css"/>
    <title>Home - Home Rental 🏠</title>
</head>
<body>

    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
        <div class="container">
            <a class="navbar-brand logo" href="#">Home Rental 🏠</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="index.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact-us.aspx">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="terms.html">Terms&Condition</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact-us.aspx">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.aspx">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="registration.aspx">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="page landing-page">
        <section class="clean-block clean-hero" style="background-image:url(&quot;assets/img/tech/bg.jpg&quot;);color:rgba(9, 162, 255, 0.85);">
            <div class="text">
                <h2>Home Rental Management System</h2>
                <p>Enable Better Outcome for Everyone!</p><button class="btn btn-outline-light btn-lg" type="button">Learn More</button>
            </div>
        </section>
        <section class="clean-block clean-info dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Info</h2>
                    <p>
                        Now a days
                        when everything is online, how is it possible that real estate left web application behind.
                    </p>
                </div>
            </div>
        </section>
        <section class="clean-block features">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Features</h2>
                    <p>Our features includes but not limited to..</p>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-5 feature-box">
                        <i class="icon-star icon"></i>
                        <h4>Bootstrap 4</h4>
                        <p>Discover Best Places to Live!</p>
                    </div>
                    <div class="col-md-5 feature-box">
                        <i class="icon-pencil icon"></i>
                        <h4>Customizable</h4>
                        <p>One stop for making an informed decision</p>
                    </div>
                    <div class="col-md-5 feature-box">
                        <i class="icon-screen-smartphone icon"></i>
                        <h4>Responsive</h4>
                        <p>Go from browsing to renting</p>
                    </div>
                    <div class="col-md-5 feature-box">
                        <i class="icon-refresh icon"></i>
                        <h4>All Browser Compatibility</h4>
                        <p>Understand localities, check property rates, reviews, transaction prices & more</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="clean-block slider dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Slider</h2>
                    <p>Check Properties!</p>
                </div>
                <div class="carousel slide" data-bs-ride="carousel" id="carousel-1">
                    <div class="carousel-inner">
                        <div class="carousel-item active"><img class="w-100 d-block" src="assets/img/scenery/house1.jpg" alt="Slide Image"/></div>
                        <div class="carousel-item"><img class="w-100 d-block" src="assets/img/scenery/house2.jpg" alt="Slide Image"/></div>
                        <div class="carousel-item"><img class="w-100 d-block" src="assets/img/scenery/house3.jpg" alt="Slide Image"/></div>
                    </div>
                    <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next"><span class="carousel-control-next-icon"></span><span class="visually-hidden">Next</span></a></div>
                    <ol class="carousel-indicators">
                        <li data-bs-target="#carousel-1" data-bs-slide-to="0" class="active"></li>
                        <li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
                        <li data-bs-target="#carousel-1" data-bs-slide-to="2"></li>
                    </ol>
                </div>
            </div>
        </section>
        <section class="clean-block about-us"></section>
    </main>
    <footer class="page-footer dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="registration.aspx">Sign up</a></li>
                        <li><a href="#">Downloads</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="contact-us.aspx">Help desk</a></li>
                        <li><a href="#">Forums</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="terms.html">Terms of Service</a></li>
                        <li><a href="terms.html">Terms of Use</a></li>
                        <li><a href="privacy.html">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="col">
                    <div class="clean-block add-on social-icons blue">
                        <div class="icons"><a href="https://www.facebook.com/jilenci.pitroda"><i class="icon-social-facebook"></i></a><a href="https://www.instagram.com/k.u.n.m.u.n_/"><i class="icon-social-instagram"></i></a><a href="#"><i class="icon-social-twitter"></i></a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <p>© 2022 Copyright Text</p>
        </div>
    </footer>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="assets/js/vanilla-zoom.js"></script>
    <script src="assets/js/theme.js"></script>
</body>
</html>
