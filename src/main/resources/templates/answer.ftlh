<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Answer</title>
    <meta content="" name="description">
    <meta content="" name="keywords">


    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.19.0/font/bootstrap-icons.css" rel="stylesheet">


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


        .card {
            margin-bottom: 30px;
            border: none;
            border-radius: 5px;
            box-shadow: 0px 0 30px rgba(1, 41, 112, 0.1);
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

        .header-nav .profile .dropdown-item {
            font-size: 14px;
            padding: 10px 15px;
            transition: 0.3s;
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

        @keyframes animate-loading {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        #notification {
            position: fixed;
            top: 10%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #4CAF50; /* Green background color */
            color: white; /* White text color */
            padding: 16px;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            transition: 0.5s;
        }

        #notification.success {
            background-color: #4CAF50;
        }

        .ratings i {
            color: green;
        }

        .install span {
            font-size: 12px;
        }

        .col-md-4 {
            margin-top: 27px;
        }

        .modal-content {
            background-color: #fff;
            border: 2px solid #3498db;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .modal-title {
            color: #3498db;
        }

        .btn-secondary {
            background-color: #ccc;
        }

        .btn-secondary:hover {
            background-color: #999;
        }

        .btn-primary {
            background-color: #3498db;
        }

        .btn-primary:hover {
            background-color: #1f78a7;
        }

        .custom-button {
            background-color: white;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
            border-color: #717ff5;

        }

        .custom-button:hover {
            background-color: #ece6e6 ;
        }


    </style>
</head>

<body>


<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="index.ftlh" class="logo d-flex align-items-center">
            <img src="assets/img/logo.png" alt="">
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
                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="/forum/history/${user.id}">
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
            <a class="nav-link collapsed" href="/#">
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
        <h1>Жооптор</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.ftlh">Башкы бет</a></li>
            </ol>
        </nav>
    </div>

    <div class="row">

        <div class="col-md-4">
            <div class="card p-3" style="margin-left: 40px; width: 400px">

                <div class="d-flex flex-row mb-3">
                    <img src="https://i.imgur.com/ccMhxvC.png" width="90" style="margin-right: 20px">

                    <div style="height: 80px;margin-top: 30px" class="d-flex flex-column ml-2"><span
                                class="text-black-50"><a href="/info/${question.userId}"
                                                         style="text-decoration: none;color: #2c384e"> ${question.userName}</a></span><span
                                class="ratings"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                    class="fa fa-star"></i><i class="fa fa-star"></i></span>
                    </div>

                    <div class="container mt-5" style="margin-left: 30px; margin-bottom:50px;">
                        <button class="custom-button">
                            <span class="word-click"
                                  style="text-decoration: none; cursor: pointer; color: #717ff5;">Арыз</span>
                        </button>
                    </div>


                    <div class="modal" id="notificationModal" tabindex="-1" role="dialog"
                         aria-labelledby="notificationModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="notificationModalLabel">Арыздануу</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    Окуяга чын эле арызданасызбы?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" style="background-color: red" class="btn btn-secondary"
                                            data-dismiss="modal">Жок
                                    </button>
                                    <a href="/complain/${question.id}">
                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Ооба</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <h6>${question.question}</h6>
                <div class="d-flex justify-content-between install mt-3"><span>${question.questionDate}</span><span
                            class="text-primary"><i
                                class="fa fa-angle-right"></i></span></div>
            </div>
        </div>
    </div>

    </div>

    <div class="container mt-4" id="question-container">

    </div>


    <div class="container mt-4">
        <div class="card mb-4">
            <div class="card-header">
                Жооп бер
            </div>

            <div class="card-body" style="margin-top: 4px">

                <form id="chat_form">
                    <#if _csrf??>
                        <input type="hidden" name="${(_csrf.parameterName)!'csrf-param-name'}"
                               value="${(_csrf.token)!'csrf-token'}"/>

                    </#if>
                    <meta name="_csrf_header" content="${_csrf.headerName}"/>
                    <meta name="_csrf_token" content="${_csrf.token}"/>
                    <div class="form-group" style="margin-bottom: 5px">
                        <textarea class="form-control" id="question" rows="3"
                                  placeholder="Type your question here"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Жөнөтүү</button>
                </form>

            </div>
        </div>
    </div>

</main>


<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const messageForm = document.querySelector('#chat_form');
        const baseUrl = 'http://localhost:8089/forum/answer/' + ${question.id};
        const csrfHeader = document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
        const csrfToken = document.querySelector('meta[name="_csrf_token"]').getAttribute('content');

        async function reviewHandler(e) {
            e.preventDefault();

            const questionInput = document.getElementById('question');
            const question = questionInput.value.trim();

            if (question === '') {
                return;
            }

            try {
                const response = await fetch(baseUrl, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        [csrfHeader]: csrfToken
                    },
                    body: JSON.stringify(question),
                });
                if (response.ok) {
                    questionInput.value = '';

                    const notification = document.createElement('div');
                    notification.id = 'notification';
                    notification.className = 'alert alert-success mt-3';
                    notification.innerHTML = 'Жооп ийгиликтүү жөнөтүлдү!';
                    notification.classList.add('success');
                    document.body.appendChild(notification);


                    setTimeout(() => {
                        notification.remove();
                    }, 5000);
                } else {
                    console.error('Error:', response.statusText);
                }

            } catch (error) {
                console.error('Error:', error);
            }


        }

        messageForm.addEventListener('submit', reviewHandler);


        function createQuestionCard(question) {
            const card = document.createElement('div');
            card.className = 'card mb-3';

            const cardHeader = document.createElement('div');
            cardHeader.className = 'card-header';
            cardHeader.textContent = question.userName;
            card.appendChild(cardHeader);

            const cardBody = document.createElement('div');
            cardBody.className = 'card-body';


            const cardText = document.createElement('p');
            cardText.className = 'card-text';
            cardText.textContent = question.answer;
            cardBody.appendChild(cardText);

            const cardDate = document.createElement('p');
            cardDate.className = 'card-text';
            cardDate.textContent = 'Дата:' + question.answerDate
            cardBody.appendChild(cardDate);


            card.appendChild(cardBody);

            return card;
        }


        async function displayQuestions() {
            const questionContainer = document.getElementById('question-container');
            try {
                const response = await fetch('http://localhost:8089/forum/answer1/' + ${question.id});
                const questions = await response.json();

                questionContainer.innerHTML = '';
                questions.forEach(question => {
                    const card = createQuestionCard(question);
                    questionContainer.appendChild(card);
                });
            } catch (error) {
                console.error('Error:', error);
            }
        }

        document.addEventListener('DOMContentLoaded', displayQuestions);

        setInterval(displayQuestions, 3000);

        $(document).ready(function () {
            $('.word-click').click(function () {
                $('#notificationModal').modal('show');
            });

            $('#notificationModal .close').click(function () {
                $('#notificationModal').modal('hide');
            });

            // Close the modal when the "Cancel" button is clicked
            $('#notificationModal .btn-secondary').click(function () {
                $('#notificationModal').modal('hide');
            });

        });


    });
</script>


</body>

</html>