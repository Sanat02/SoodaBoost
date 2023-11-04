<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Pages / Register - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description">
    <meta content="" name="keywords">



    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.19.0/font/bootstrap-icons.css" rel="stylesheet">



    <link href="assets/css/style.css" rel="stylesheet">

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


    </style>


</head>

<body>

<main>
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="d-flex justify-content-center py-4">
                            <a href="index.ftlh" class="logo d-flex align-items-center w-auto">
                                <span class="d-none d-lg-block">SoodaBoost</span>
                            </a>
                        </div>

                        <div class="card mb-3">

                            <div class="card-body">

                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">Катталуу</h5>
                                    <p class="text-center small">Жеке маалымат киргизиңиз</p>
                                </div>

                                <form action="/register" method="post" class="row g-3 needs-validation">
                                    <#if _csrf??>
                                        <input type="hidden" name="${(_csrf.parameterName)!'csrf-param-name'}"
                                               value="${(_csrf.token)!'csrf-token'}"/>
                                    </#if>
                                    <div class="col-12">
                                        <label for="yourName" class="form-label">Аты-жөнүңүз</label>
                                        <input type="text" name="fio" class="form-control" id="yourName" required>
                                        <div class="invalid-feedback">Аты-жөнүңүздү жазыңыз</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="yourEmail" class="form-label"> Email</label>
                                        <input type="email" name="email" class="form-control" id="yourEmail" required>
                                        <div class="invalid-feedback">Email дарегиңизди жазыңыз!</div>
                                    </div>
                                    <div class="col-12">
                                        <label for="yourEmail" class="form-label"> Байланыш номер</label>
                                        <input type="tel" name="phone_number" class="form-control" id="yourEmail"
                                               required>
                                        <div class="invalid-feedback">Номеринизди жазыңыз!</div>
                                    </div>
                                    <div class="col-12">
                                        <label for="userRole" class="form-label">Роль</label>
                                        <select name="role" class="form-select" id="userRole" required>
                                            <option value="1">Колдонуучу</option>
                                        </select>
                                        <div class="invalid-feedback">Ролду тандаңыз!</div>
                                    </div>
                                    <div class="col-12">
                                        <label for="yourPassword" class="form-label">Сыр сөз</label>
                                        <input type="password" name="password" class="form-control" id="yourPassword"
                                               required>
                                        <div class="invalid-feedback">Сыр сөз жазыңыз!</div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">Катталуу</button>
                                    </div>
                                    <div class="col-12">
                                        <p class="small mb-0">Аккаунтуңуз барбы? <a href="/login">Кирүү</a></p>
                                    </div>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </section>

    </div>
</main>

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>


</body>

</html>