<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Dashboard - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.5.0/css/bootstrap.min.css" rel="stylesheet">
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

        /*--------------------------------------------------------------
        # Main
        --------------------------------------------------------------*/
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

        .pagetitle {
            margin-bottom: 10px;
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

        .back-to-top.active {
            visibility: visible;
            opacity: 1;
        }


        .dropdown-menu .dropdown-footer a {
            color: #444444;
            text-decoration: underline;
        }

        .dropdown-menu .dropdown-footer a:hover {
            text-decoration: none;
        }


        /* Card */
        .card {
            margin-bottom: 30px;
            border: none;
            border-radius: 5px;
            box-shadow: 0px 0 30px rgba(1, 41, 112, 0.1);
        }

        .card-header {
            border-color: #ebeef4;
            background-color: #fff;
            color: #798eb3;
            padding: 15px;
        }

        .card-title {
            padding: 20px 0 15px 0;
            font-size: 18px;
            font-weight: 500;
            color: #012970;
            font-family: "Poppins", sans-serif;
        }

        .card-title span {
            color: #899bbd;
            font-size: 14px;
            font-weight: 400;
        }

        .card-body {
            padding: 0 20px 20px 20px;
        }

        .breadcrumb {
            font-size: 14px;
            font-family: "Nunito", sans-serif;
            color: #899bbd;
            font-weight: 600;
        }

        .breadcrumb a {
            color: #899bbd;
            transition: 0.3s;
        }

        .breadcrumb a:hover {
            color: #51678f;
        }

        .breadcrumb .breadcrumb-item::before {
            color: #899bbd;
        }

        .breadcrumb .active {
            color: #51678f;
            font-weight: 600;
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

        .nav-tabs-bordered .nav-link.active {
            background-color: #fff;
            color: #4154f1;
            border-bottom: 2px solid #4154f1;
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

        .sidebar-nav .nav-content a:hover,
        .sidebar-nav .nav-content a.active {
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


        .dashboard .info-card {
            padding-bottom: 10px;
        }

        .dashboard .info-card h6 {
            font-size: 28px;
            color: #012970;
            font-weight: 700;
            margin: 0;
            padding: 0;
        }

        .dashboard .card-icon {
            font-size: 32px;
            line-height: 0;
            width: 64px;
            height: 64px;
            flex-shrink: 0;
            flex-grow: 0;
        }

        .dashboard .sales-card .card-icon {
            color: #4154f1;
            background: #f6f6fe;
        }

        .dashboard .revenue-card .card-icon {
            color: #2eca6a;
            background: #e0f8e9;
        }

        .dashboard .customers-card .card-icon {
            color: #ff771d;
            background: #ffecdf;
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


        .profile .profile-overview .card-title {
            color: #012970;
        }


        .profile .profile-edit label {
            font-weight: 600;
            color: rgba(1, 41, 112, 0.6);
        }

        .profile .profile-edit img {
            max-width: 120px;
        }

        /*--------------------------------------------------------------
        # F.A.Q Page
        --------------------------------------------------------------*/
        .faq .basic h6 {
            font-size: 18px;
            font-weight: 600;
            color: #4154f1;
        }

        .faq .basic p {
            color: #6980aa;
        }

        .contact .info-box {
            padding: 28px 30px;
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

        .contact .php-email-form .error-message {
            display: none;
            color: #fff;
            background: #ed3c0d;
            text-align: left;
            padding: 15px;
            margin-bottom: 24px;
            font-weight: 600;
        }

        .contact .php-email-form .sent-message {
            display: none;
            color: #fff;
            background: #18d26e;
            text-align: center;
            padding: 15px;
            margin-bottom: 24px;
            font-weight: 600;
        }

        .contact .php-email-form .loading {
            display: none;
            background: #fff;
            text-align: center;
            padding: 15px;
            margin-bottom: 24px;
        }

        .contact .php-email-form .loading:before {
            content: "";
            display: inline-block;
            border-radius: 50%;
            width: 24px;
            height: 24px;
            margin: 0 10px -6px 0;
            border: 3px solid #18d26e;
            border-top-color: #eee;
            animation: animate-loading 1s linear infinite;
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


        @media (min-width: 992px) {
            .error-404 img {
                max-width: 50%;
            }
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

            <#if user??>
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
                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="/forum/history">
                        <i class="bi bi-box-arrow-right"></i>
                        <span>Окуялар</span>
                    </a>
                </li>
            </#if>

        </ul>
    </nav>

</header>


<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link " href="#">
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

    <div class="pagetitle">
        <h1>Башкы бет</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.ftlh">Биз жөнүндө</a></li>
                <li class="breadcrumb-item active">Башкы бет</li>
            </ol>
        </nav>
    </div>

    <section class="section dashboard">
        <div class="row">

            <div class="col-lg-8">
                <div class="row">


                    <div class="col-xxl-4 col-md-6">
                        <a href="/companies">
                            <div class="card info-card sales-card">
                                <div class="card-body">
                                    <h5 class="card-title">Мекемелер</h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-cart"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6>${companySize}</h6>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>


                    <div class="col-xxl-4 col-md-6">
                        <a href="/#">
                            <div class="card info-card sales-card">
                                <div class="card-body">
                                    <h5 class="card-title">Ишкерлер</h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-cart"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6>${userSize}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-xxl-4 col-md-6">
                        <a href="/consultation">
                            <div class="card info-card sales-card">
                                <div class="card-body">
                                    <h5 class="card-title">Тестирлоо</h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-cart"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6>${testSize}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="card">
                        <div class="card mb-3">
                            <a href="http://cbd.minjust.gov.kg/act/view/ru-ru/112361">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="data:image/jpeg;base64,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"
                                             class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title">Баш мыйзам</h5>
                                            <p class="card-text">Кыргыз Республикасынын Мамлекеттик сатып алуулар
                                                жөнүндө мыйзамы</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">SoodaBoost</h5>
                            Кыргызстандагы мамлекеттик сатып алуулар дүйнөсүндө сиздин ишенимдүү өнөктөшүңүз.
                            Тендерди кантип оңой жана ачык жүргүзүүнү үйрөнүңүз, сатып алуулар боюнча мыйзамдар жана
                            процедуралар боюнча билимиңизди арттырыңыз жана мамлекеттик сатып алуулар боюнча
                            эксперттер менен байланышыңыз. Мамлекеттик сатып алуулар процессин жөнөкөйлөтүү,
                            коррупциялык тобокелдиктерди азайтуу жана ачыктыкты жакшыртуу. Бүгүндөн баштап, мамлекеттик
                            сатып алуулар дүйнөсүндө акылдуураак болуңуз..
                        </div>
                    </div>

                    <div class="container">
                        <h2>Биз тууралуу</h2>

                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link" type="button" data-toggle="collapse"
                                                data-target="#collapseOne" aria-expanded="true"
                                                aria-controls="collapseOne">
                                            Окутуу жана билим берүү:
                                        </button>
                                    </h2>
                                </div>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                     data-parent="#accordionExample">
                                    <div class="card-body">
                                        Мамлекеттик сатып алуулардын эрежелери жана жол-жоболору жөнүндө маалымат беруу.
                                        Эрежелерди жана мамлекеттик сатып алуу мыйзамдарын үйрөтүү үчүн онлайн курстар
                                        жана вебинарлар.
                                        Тесттерди жана сертификаттарды тапшыруу мүмкүнчүлүгү.
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link" type="button" data-toggle="collapse"
                                                data-target="#collapseOne" aria-expanded="true"
                                                aria-controls="collapseOne">
                                            Ишенимдуу ишкерлер жана коопсуздук:
                                        </button>
                                    </h2>
                                </div>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                     data-parent="#accordionExample">
                                    <div class="card-body">
                                        Бул жерден мамлекеттик мекемелер оной жана бат ишенимдуу ишкерлерди таба алат.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link" type="button" data-toggle="collapse"
                                                data-target="#collapseOne" aria-expanded="true"
                                                aria-controls="collapseOne">
                                            Мониторинг жүргүзүү жана алдын алуу:
                                        </button>
                                    </h2>
                                </div>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                     data-parent="#accordionExample">
                                    <div class="card-body">
                                        Ишкерлердин билим денгээлин жана статистикасын коруу жана баа беруую
                                        Ошондой эле алардын тестирлоосунун жыйынтыгын карап
                                        билимине баа бере алат
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link" type="button" data-toggle="collapse"
                                                data-target="#collapseOne" aria-expanded="true"
                                                aria-controls="collapseOne">
                                            Тажрыйба алмашуу жана баарлашуу:
                                        </button>
                                    </h2>
                                </div>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                     data-parent="#accordionExample">
                                    <div class="card-body">
                                        Мамлекеттик органдардын кызматкерлеринин ортосунда тажрыйба жана билим алмашуу
                                        үчүн форум жана жамааттар.
                                        Эксперттер менен байланышуу жана суроолорду берүү мүмкүнчүлүгү.
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

                <section class="section contact" style="margin-top: 100px;">

                    <div class="row gy-4">

                        <div class="col-xl-6">

                            <div class="row">

                                <div class="col-lg-6">
                                    <div class="info-box card">
                                        <i class="bi bi-telephone"></i>
                                        <h3>Байланыш номуру</h3>
                                        <p>+996 700 293 100</p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="info-box card">
                                        <i class="bi bi-envelope"></i>
                                        <h3>Email дарек</h3>
                                        <p>sanatbakytbekova@gmail.com</p>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </section>
            </div>


            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body pb-0">
                        <h5 class="card-title">Жаңылыктар</h5>
                        <#list news as n >
                            <div class="news">
                                <div class="post-item clearfix">
                                    <h4><a href="#">${n.title}</a></h4>
                                    <p>${n.description}</p>
                                    <p style="color: #0056b3;">${n.newsDate}</p>
                                </div>
                            </div>
                        </#list>

                    </div>
                </div>
            </div>

        </div>
    </section>


</main>


<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

<!-- Include Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>


</body>

</html>