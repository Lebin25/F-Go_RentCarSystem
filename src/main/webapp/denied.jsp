<%-- 
    Document   : denied
    Created on : Jul 11, 2022, 7:53:14 AM
    Author     : Bin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Denied Page</title>
        <style>
            @import url("https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900|Nunito:200,300,400,600,700,800,900&display=swap");
            /*font import from google fonts*/
            body {
                font-family: "Nunito", sans-serif;
                transition: all 0.5s ease;
            }
            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                font-family: "Montserrat", sans-serif;
            }
            .page-wrap {
                padding: 30px 15px;
                text-align: center;
                display: flex;
                align-items: center;
                justify-content: center;
                .page-not-found {
                    width: 400px;
                    margin-left: auto;
                    margin-right: auto;
                    position: relative;
                    .img-key {
                        margin-bottom: 0px;
                    }
                    h1.text-xl {
                        color: #000;
                        text-transform: uppercase;
                        line-height: 50px;
                        font-size: 160px;
                        font-weight: 800;
                        letter-spacing: -28px;
                        text-shadow: -6px 4px 0px #fff;
                        margin-left: -20px;
                        margin-top: 50px;
                        margin-bottom: 50px;
                        span {
                            transition: all 1s ease;
                            display: inline-block;
                            animation: pulse 5s infinite;
                        }
                    }
                    h4.text-md,
                    h4.text-sm {
                        letter-spacing: 0.38px;
                        font-weight: 300;
                        line-height: 20px;
                        font-size: 14px;
                        text-transform: none;
                        color: rgba(0, 0, 0, 0.5);
                        margin-bottom: 0px;
                        width: 100%;
                        a {
                            color: #1177bd;
                            text-decoration: underline;
                            font-weight: 700;
                            &:hover,
                                &:focus {
                                text-decoration: none;
                            }
                        }
                    }
                    h4.text-md {
                        font-size: 50px;
                        font-weigth: 700;
                        color: #1177bd;
                        text-transform: none;
                    }
                    h4.text-sm-btm {
                        top: auto;
                        bottom: 40px;
                    }
                }
            }
            @keyframes pulse {
                0% {
                    color: #000;
                }
                50% {
                    color: rgba(240, 48, 48, 1);
                }
                100% {
                    color: #000;
                }
            }
            @media (max-width: 768px) {
                .page-wrap {
                    .page-not-found {
                        h1.text-xl {
                            font-size: 120px;
                            letter-spacing: -20px;
                            margin-bottom: 30px;
                        }
                        h4.text-sm {
                            top: 10px;
                        }
                        h4.text-sm-btm {
                            bottom: -60px;
                        }
                        h4.text-md {
                            font-size: 30px;
                        }
                    }
                }
            }

        </style>
    </head>
    <body>
        <div class="page-wrap">
            <div class="page-not-found">
                <img src="https://res.cloudinary.com/razeshzone/image/upload/v1588316204/house-key_yrqvxv.svg" class="img-key" alt="">
                <h1 class="text-xl">
                    <span style="color: red;">4</span>
                    <span style="color: red;">0</span>
                    <span class="broken" style="color: red;">3</span>
                </h1>
                <h4 class="text-md" style="color: red;">Access Denied !</h4>
                <h4 class="text-sm text-sm-btm">You don’t have permission to access that page! You can go back to <a href="Home">home page</a></h4>
            </div>
        </div>
    </body>
</html>
