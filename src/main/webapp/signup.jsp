<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign up F-Go</title>
        <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="/CSS/signupStyle.css">
    </head>

    <body>
        <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
            <div class="container">
                <div class="card signup-card">
                    <div class="row no-gutters">
                        <div class="col-md-5">
                            <img src="IMG/login.jpg" alt="signup" class="signup-card-img">
                        </div>
                        <div class="col-md-7">
                            <div class="card-body">
                                <div class="brand-wrapper">
                                    <img src="IMG/logo.png" alt="logo" class="logo">
                                </div>
                                <p class="signup-card-description">Đăng ký tài khoản F-Go</p>
                                <form action="signup" method="post">
                                    <div class="form-group">
                                        <label for="user" class="sr-only">Tài khoản</label>
                                        <input type="text" name="user"  class="form-control"
                                               placeholder="Tài khoản">
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="password" class="sr-only">Mật Khẩu</label>
                                        <input type="password" name="pass" id="password" class="form-control"
                                               placeholder="Mật khẩu">
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="password" class="sr-only">Nhập Lại Mật Khẩu</label>
                                        <input type="password" name="repass" id="password" class="form-control"
                                               placeholder="Nhập lại mật khẩu">
                                    </div>

                                    <button class="btn btn-block signup-btn mb-4" type="submit">Đăng kí</button>>
                                </form>

                                <p class="signup-card-footer-text">Đã có tải khoản? <a href="login.jsp" class="text-reset">Trở lại đăng nhập</a></p>

                                <p>Hoặc</p>
                                <div class="social-signup row">
                                    <div class="col-md-6 mb-2">
                                        <a class="btn btn-outline-dark social-signup-btn" href="#" role="button">
                                            <img width="20px" alt="Google sign-in"
                                                 src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/512px-Google_%22G%22_Logo.svg.png" />
                                            Đăng nhập bằng Google
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>

</html>