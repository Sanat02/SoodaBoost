<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Info</title>
    <meta content="" name="description">
    <meta content="" name="keywords">


    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.19.0/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">


    <style>
        :root {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Open Sans", sans-serif;
            background: #f6f9ff;
            color: #444444;
        }

        a {
            color: #4154f1;
            text-decoration: none;
        }

        a:hover {
            color: #717ff5;
            text-decoration: none;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-family: "Nunito", sans-serif;
        }

        #main {
            margin-top: 60px;
            padding: 20px 30px;
            transition: all 0.3s;
        }

        @media (max-width: 1199px) {
            #main {
                padding: 20px;
            }
        }

        .pagetitle h1 {
            font-size: 24px;
            margin-bottom: 0;
            font-weight: 600;
            color: #012970;
        }

        .back-to-top {
            position: fixed;
            visibility: hidden;
            opacity: 0;
            right: 15px;
            bottom: 15px;
            z-index: 99999;
            background: #4154f1;
            width: 40px;
            height: 40px;
            border-radius: 4px;
            transition: all 0.4s;
        }

        .back-to-top i {
            font-size: 24px;
            color: #fff;
            line-height: 0;
        }

        .back-to-top:hover {
            background: #6776f4;
            color: #fff;
        }


        .dropdown-menu .dropdown-footer a {
            color: #444444;
            text-decoration: underline;
        }

        .dropdown-menu .dropdown-footer a:hover {
            text-decoration: none;
        }


        .dropdown-menu .dropdown-item i {
            margin-right: 10px;
            font-size: 18px;
            line-height: 0;
        }


        @keyframes dropdown-animate {
            0% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }

            0% {
                opacity: 0;
            }
        }


        .card-title span {
            color: #899bbd;
            font-size: 14px;
            font-weight: 400;
        }


        .breadcrumb a {
            color: #899bbd;
            transition: 0.3s;
        }

        .breadcrumb a:hover {
            color: #51678f;
        }


        .nav-tabs-bordered .nav-link {
            margin-bottom: -2px;
            border: none;
            color: #2c384e;
        }

        .nav-tabs-bordered .nav-link:hover,
        .nav-tabs-bordered .nav-link:focus {
            color: #4154f1;
        }

        .logo {
            line-height: 1;
        }

        @media (min-width: 1200px) {
            .logo {
                width: 280px;
            }
        }

        .logo img {
            max-height: 26px;
            margin-right: 6px;
        }

        .logo span {
            font-size: 26px;
            font-weight: 700;
            color: #012970;
            font-family: "Nunito", sans-serif;
        }

        .header {
            transition: all 0.5s;
            z-index: 997;
            height: 60px;
            box-shadow: 0px 2px 20px rgba(1, 41, 112, 0.1);
            background-color: #fff;
            padding-left: 20px;
        }

        .header .toggle-sidebar-btn {
            font-size: 32px;
            padding-left: 10px;
            cursor: pointer;
            color: #012970;
        }


        @media (max-width: 1199px) {


        }

        .header .search-form input {
            border: 0;
            font-size: 14px;
            color: #012970;
            border: 1px solid rgba(1, 41, 112, 0.2);
            padding: 7px 38px 7px 8px;
            border-radius: 3px;
            transition: 0.3s;
            width: 100%;
        }

        .header .search-form input:focus,
        .header .search-form input:hover {
            outline: none;
            box-shadow: 0 0 10px 0 rgba(1, 41, 112, 0.15);
            border: 1px solid rgba(1, 41, 112, 0.3);
        }

        .header .search-form button {
            border: 0;
            padding: 0;
            margin-left: -30px;
            background: none;
        }

        .header .search-form button i {
            color: #012970;
        }


        .header-nav ul {
            list-style: none;
        }

        .header-nav > ul {
            margin: 0;
            padding: 0;
        }


        .header-nav .nav-profile {
            color: #012970;
        }

        .header-nav .nav-profile img {
            max-height: 36px;
        }

        .header-nav .nav-profile span {
            font-size: 14px;
            font-weight: 600;
        }

        .header-nav .notifications .notification-item i {
            margin: 0 20px 0 10px;
            font-size: 24px;
        }

        .header-nav .notifications .notification-item h4 {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .header-nav .notifications .notification-item p {
            font-size: 13px;
            margin-bottom: 3px;
            color: #919191;
        }


        .header-nav .messages .message-item a {
            display: flex;
        }

        .header-nav .messages .message-item img {
            margin: 0 20px 0 10px;
            max-height: 40px;
        }

        .header-nav .messages .message-item h4 {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 5px;
            color: #444444;
        }

        .header-nav .messages .message-item p {
            font-size: 13px;
            margin-bottom: 3px;
            color: #919191;
        }


        .header-nav .profile .dropdown-header h6 {
            font-size: 18px;
            margin-bottom: 0;
            font-weight: 600;
            color: #444444;
        }

        .header-nav .profile .dropdown-header span {
            font-size: 14px;
        }


        .header-nav .profile .dropdown-item i {
            margin-right: 10px;
            font-size: 18px;
            line-height: 0;
        }


        .sidebar {
            position: fixed;
            top: 60px;
            left: 0;
            bottom: 0;
            width: 300px;
            z-index: 996;
            transition: all 0.3s;
            padding: 20px;
            overflow-y: auto;
            scrollbar-width: thin;
            scrollbar-color: #aab7cf transparent;
            box-shadow: 0px 0px 20px rgba(1, 41, 112, 0.1);
            background-color: #fff;
        }

        @media (max-width: 1199px) {
            .sidebar {
                left: -300px;
            }
        }

        .sidebar::-webkit-scrollbar {
            width: 5px;
            height: 8px;
            background-color: #fff;
        }

        .sidebar::-webkit-scrollbar-thumb {
            background-color: #aab7cf;
        }

        @media (min-width: 1200px) {

            #main {
                margin-left: 300px;
            }
        }

        @media (max-width: 1199px) {
            .toggle-sidebar .sidebar {
                left: 0;
            }
        }

        @media (min-width: 1200px) {

            .toggle-sidebar #main {
                margin-left: 0;
            }

            .toggle-sidebar .sidebar {
                left: -300px;
            }
        }

        .sidebar-nav {
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .sidebar-nav li {
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .sidebar-nav .nav-item {
            margin-bottom: 5px;
        }

        .sidebar-nav .nav-heading {
            font-size: 11px;
            text-transform: uppercase;
            color: #899bbd;
            font-weight: 600;
            margin: 10px 0 5px 15px;
        }

        .sidebar-nav .nav-link {
            display: flex;
            align-items: center;
            font-size: 15px;
            font-weight: 600;
            color: #4154f1;
            background: #f6f9ff;
            padding: 10px 15px;
            border-radius: 4px;
        }

        .sidebar-nav .nav-link i {
            font-size: 16px;
            margin-right: 10px;
            color: #4154f1;
        }

        .sidebar-nav .nav-link.collapsed {
            color: #012970;
            background: #fff;
        }

        .sidebar-nav .nav-link.collapsed i {
            color: #899bbd;
        }

        .sidebar-nav .nav-link:hover {
            color: #4154f1;
            background: #f6f9ff;
        }

        .sidebar-nav .nav-link:hover i {
            color: #4154f1;
        }

        .sidebar-nav .nav-content a {
            display: flex;
            align-items: center;
            font-size: 14px;
            font-weight: 600;
            color: #012970;
            padding: 10px 0 10px 40px;
            transition: 0.3s;
        }

        .sidebar-nav .nav-content a i {
            font-size: 6px;
            margin-right: 8px;
            line-height: 0;
            border-radius: 50%;
        }

        .sidebar-nav .nav-content a:hover {
            color: #4154f1;
        }

        .sidebar-nav .nav-content a.active i {
            background-color: #4154f1;
        }

        .dashboard .filter .dropdown-header h6 {
            text-transform: uppercase;
            font-size: 14px;
            font-weight: 600;
            letter-spacing: 1px;
            color: #aab7cf;
            margin-bottom: 0;
            padding: 0;
        }


        .dashboard .info-card h6 {
            font-size: 28px;
            color: #012970;
            font-weight: 700;
            margin: 0;
            padding: 0;
        }


        .dashboard .news img {
            width: 80px;
            float: left;
            border-radius: 5px;
        }

        .dashboard .news h4 {
            font-size: 15px;
            margin-left: 95px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .dashboard .news h4 a {
            color: #012970;
            transition: 0.3s;
        }

        .dashboard .news h4 a:hover {
            color: #4154f1;
        }

        .dashboard .news p {
            font-size: 14px;
            color: #777777;
            margin-left: 95px;
        }


        .dashboard .recent-sales .table thead {
            background: #f6f6fe;
        }

        .dashboard .recent-sales .table thead th {
            border: 0;
        }


        .dashboard .top-selling .table thead {
            background: #f6f6fe;
        }

        .dashboard .top-selling .table thead th {
            border: 0;
        }

        .dashboard .top-selling .table tbody td {
            vertical-align: middle;
        }

        .dashboard .top-selling img {
            border-radius: 5px;
            max-width: 60px;
        }


        .iconslist i {
            margin: 0.25rem;
            font-size: 2.5rem;
        }


        .profile .profile-card img {
            max-width: 120px;
        }

        .profile .profile-card h2 {
            font-size: 24px;
            font-weight: 700;
            color: #2c384e;
            margin: 10px 0 0 0;
        }

        .profile .profile-card h3 {
            font-size: 18px;
        }

        .profile .profile-card .social-links a {
            font-size: 20px;
            display: inline-block;
            color: rgba(1, 41, 112, 0.5);
            line-height: 0;
            margin-right: 10px;
            transition: 0.3s;
        }

        .profile .profile-card .social-links a:hover {
            color: #012970;
        }


        .profile .profile-edit label {
            font-weight: 600;
            color: rgba(1, 41, 112, 0.6);
        }

        .profile .profile-edit img {
            max-width: 120px;
        }


        .faq .basic h6 {
            font-size: 18px;
            font-weight: 600;
            color: #4154f1;
        }

        .faq .basic p {
            color: #6980aa;
        }


        .contact .info-box i {
            font-size: 38px;
            line-height: 0;
            color: #4154f1;
        }

        .contact .info-box h3 {
            font-size: 20px;
            color: #012970;
            font-weight: 700;
            margin: 20px 0 10px 0;
        }

        .contact .info-box p {
            padding: 0;
            line-height: 24px;
            font-size: 14px;
            margin-bottom: 0;
        }


        .contact .php-email-form input,
        .contact .php-email-form textarea {
            border-radius: 0;
            box-shadow: none;
            font-size: 14px;
            border-radius: 0;
        }

        .contact .php-email-form input:focus,
        .contact .php-email-form textarea:focus {
            border-color: #4154f1;
        }

        .contact .php-email-form input {
            padding: 10px 15px;
        }

        .contact .php-email-form textarea {
            padding: 12px 15px;
        }

        .contact .php-email-form button[type=submit] {
            background: #4154f1;
            border: 0;
            padding: 10px 30px;
            color: #fff;
            transition: 0.4s;
            border-radius: 4px;
        }

        .contact .php-email-form button[type=submit]:hover {
            background: #5969f3;
        }

        @keyframes animate-loading {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        .error-404 h1 {
            font-size: 180px;
            font-weight: 700;
            color: #4154f1;
            margin-bottom: 0;
            line-height: 150px;
        }

        .error-404 h2 {
            font-size: 24px;
            font-weight: 700;
            color: #012970;
            margin-bottom: 30px;
        }


        @media (min-width: 992px) {
            .error-404 img {
                max-width: 50%;
            }
        }

        .card {
            border: none;

            position: relative;
            overflow: hidden;
            border-radius: 8px;
            cursor: pointer;
        }

        .card:before {

            content: "";
            position: absolute;
            left: 0;
            top: 0;
            width: 4px;
            height: 100%;
            background-color: #5767ec;
            transform: scaleY(1);
            transition: all 0.5s;
            transform-origin: bottom
        }

        .card:after {

            content: "";
            position: absolute;
            left: 0;
            top: 0;
            width: 4px;
            height: 100%;
            background-color: #4154f1;
            transform: scaleY(0);
            transition: all 0.5s;
            transform-origin: bottom
        }

        .card:hover::after {
            transform: scaleY(1);
        }


        .fonts {
            font-size: 11px;
        }

        .social-list {
            display: flex;
            list-style: none;
            justify-content: center;
            padding: 0;
        }

        .social-list li {
            padding: 10px;
            color: #4154f1;
            font-size: 19px;
        }


        .buttons button:nth-child(1) {
            border: 1px solid #4154f1 !important;
            color: #4154f1;
            height: 40px;
        }

        .buttons button:nth-child(1):hover {
            border: 1px solid #4154f1 !important;
            color: #fff;
            height: 40px;
            background-color: #4154f1;
        }

        .buttons button:nth-child(2) {
            border: 1px solid #4154f1 !important;
            background-color: #4154f1;
            color: #fff;
            height: 40px;
        }

        .contact-heading {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }

        .contact-info {
            font-size: 18px;
            color: #666;
            margin-bottom: 8px;
        }


    </style>


</head>

<body>


<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="index.ftlh" class="logo d-flex align-items-center">
            <span class="d-none d-lg-block">SoodaBoost</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div>


    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
            <li class="nav-item dropdown pe-3">

            <li class="nav-item dropdown pe-3">
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <i class="fa fa-user fa-1x"></i>
                    <span class="d-none d-md-block dropdown-toggle ps-2">${user.email}</span>
                </a>
            </li>
            <li style="margin-right: 6px;margin-left: 6px;">
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="/logout">
                    <i class="bi bi-box-arrow-right"></i>
                    <span>Чыгуу</span>
                </a>
            </li>
            <li style="margin-right: 6px;margin-left: 6px;">
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="/forum/history/${user.id}">
                    <i class="bi bi-box-arrow-right"></i>
                    <span>Окуялар</span>
                </a>
            </li>
            </li>
        </ul>
    </nav>

</header>

<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link " href="/">
                <i class="bi bi-grid"></i>
                <span>Башкы бет</span>
            </a>
        </li>

        <li class="nav-heading">Беттер</li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="/profile">
                <i class="bi bi-person"></i>
                <span>Жеке баракча</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="/education">
                <i class="bi bi-bank"></i>
                <span>Окутуулар</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="/forum">
                <i class="bi bi-bank"></i>
                <span>Форум</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="/test">
                <i class="bi bi-calculator"></i>
                <span>Тест</span>
            </a>
        </li>


        <li class="nav-item">
            <a class="nav-link collapsed" href="/consultation">
                <i class="bi bi-question-circle"></i>
                <span>Ишкерлер</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="/companies">
                <i class="bi bi-bar-chart-line"></i>
                <span>Мекемелер</span>
            </a>
        </li>


        <li class="nav-item">
            <a class="nav-link collapsed" href="/register">
                <i class="bi bi-card-list"></i>
                <span>Катталуу</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="/login">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>Кирүү</span>
            </a>
        </li>


    </ul>

</aside>

<main id="main" class="main">
    <div class="container mt-5">

        <div class="row d-flex justify-content-center">

            <div class="col-md-7">

                <div class="card p-3 py-4">

                    <div class="text-center">
                        <img src="https://cdn-icons-png.flaticon.com/512/1053/1053244.png" width="100"
                             class="rounded-circle">
                    </div>

                    <div class="text-center mt-3">
                        <h5 class="mt-2 mb-0">${searchedUser.fio}</h5>

                        <div class="px-4 mt-1">
                            <p class="fonts contact-info"><i class="fas fa-envelope"></i> ${searchedUser.email}</p>
                            <p class="fonts contact-info"><i class="fas fa-phone"></i> ${searchedUser.phoneNumber}</p>
                        </div>

                        <ul class="social-list">
                            <li><i class="fa fa-facebook"></i></li>
                            <li><i class="fa fa-dribbble"></i></li>
                            <li><i class="fa fa-instagram"></i></li>
                            <li><i class="fa fa-linkedin"></i></li>
                            <li><i class="fa fa-google"></i></li>
                        </ul>

                        <div class="buttons">
                            <a href="/forum/history/${searchedUser.id}">
                                <button class="btn btn-outline-primary px-4">Окуялар</button>
                            </a>
                        </div>


                    </div>


                </div>

            </div>

        </div>

    </div>
</main>


<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>