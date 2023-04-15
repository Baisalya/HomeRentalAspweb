<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact-us.aspx.cs" Inherits="HomeRentalApp.contact_us" %>

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
    <title>Contact Us - Home Rental 🏠</title>
</head>
<body>
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
        <div class="container">
            <a class="navbar-brand logo" href="#">Home Rental 🏠</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="contact-us.aspx">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.aspx">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="registration.aspx">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="page contact-us-page">
        <section class="clean-block clean-form dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Contact Us</h2>
                    <p>We'd Love To Hear From You!</p>
                </div>
                <form id="form_contact" action="contact-us.aspx" method="post">
                    <div class="mb-3"><label class="form-label" for="name">Name</label><input class="form-control" type="text" id="name" name="name"/></div>
                    <div class="mb-3"><label class="form-label" for="subject">Subject</label><input class="form-control" type="text" id="subject" name="subject"/></div>
                    <div class="mb-3"><label class="form-label" for="email">Email</label><input class="form-control" type="email" id="email" name="email"/></div>
                    <div class="mb-3"><label class="form-label" for="message">Message</label><textarea class="form-control" id="message" name="message"></textarea></div>
                    <div class="mb-3"><button class="btn btn-primary" id="contact_submit" type="submit">Send</button></div>
                </form>
            </div>
        </section>
    </main>
    <footer class="page-footer dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Sign up</a></li>
                        <li><a href="#">Downloads</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Help desk</a></li>
                        <li><a href="#">Forums</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Terms of Use</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="col">
                    <div class="clean-block add-on social-icons blue">
                        <div class="icons"><a href="#"><i class="icon-social-facebook"></i></a><a href="#"><i class="icon-social-instagram"></i></a><a href="#"><i class="icon-social-twitter"></i></a></div>
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
