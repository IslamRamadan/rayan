

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="{{asset('dashboard/assets/img/apple-icon.png')}}">
    <link rel="icon" type="image/png" href="{{asset('dashboard/assets/img/favicon.png')}}">
    <title>
        {{$my_setting->site_name_en}}
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="{{asset('dashboard/assets/css/nucleo-icons.css')}}" rel="stylesheet" />
    <link href="{{asset('dashboard/assets/css/nucleo-svg.css')}}" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="{{asset('dashboard/assets/css/nucleo-svg.css')}}" rel="stylesheet" />
    <!-- CSS Files -->
    <link id="pagestyle" href="{{asset('dashboard/assets/css/soft-ui-dashboard.css?v=1.0.1')}}" rel="stylesheet" />
</head>

<body class="g-sidenav-show  bg-white">
@include('sweetalert::alert')
<div class="container position-sticky z-index-sticky top-0">
    <div class="row">
        <div class="col-12">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg  blur blur-rounded top-0  z-index-3 shadow position-absolute my-3 py-2 start-0 end-0 mx-4">
                <div class="container-fluid">
                    <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="../pages/dashboard.html">
                        Soft UI Dashboard
                    </a>
{{--                    <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">--}}
{{--              <span class="navbar-toggler-icon mt-2">--}}
{{--                <span class="navbar-toggler-bar bar1"></span>--}}
{{--                <span class="navbar-toggler-bar bar2"></span>--}}
{{--                <span class="navbar-toggler-bar bar3"></span>--}}
{{--              </span>--}}
{{--                    </button>--}}
{{--                    <div class="collapse navbar-collapse" id="navigation">--}}
{{--                        <ul class="navbar-nav mx-auto">--}}
{{--                            <li class="nav-item">--}}
{{--                                <a class="nav-link d-flex align-items-center me-2 active" aria-current="page" href="../pages/dashboard.html">--}}
{{--                                    <i class="fa fa-chart-pie opacity-6 text-dark me-1"></i>--}}
{{--                                    Dashboard--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="nav-item">--}}
{{--                                <a class="nav-link me-2" href="../pages/profile.html">--}}
{{--                                    <i class="fa fa-user opacity-6 text-dark me-1"></i>--}}
{{--                                    Profile--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="nav-item">--}}
{{--                                <a class="nav-link me-2" href="../pages/sign-up.html">--}}
{{--                                    <i class="fas fa-user-circle opacity-6 text-dark me-1"></i>--}}
{{--                                    Sign Up--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="nav-item">--}}
{{--                                <a class="nav-link me-2" href="../pages/sign-in.html">--}}
{{--                                    <i class="fas fa-key opacity-6 text-dark me-1"></i>--}}
{{--                                    Sign In--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                        <ul class="navbar-nav d-lg-block d-none">--}}
{{--                            <li class="nav-item">--}}
{{--                                <a href="https://www.creative-tim.com/product/soft-ui-dashboard" class="btn btn-sm btn-round mb-0 me-1 bg-gradient-dark">Free download</a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
                </div>
            </nav>
            <!-- End Navbar -->
        </div>
    </div>
</div>
<section>
    <div class="page-header section-height-75">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-5 col-md-6 d-flex flex-column mx-auto">
                    <div class="card card-plain mt-8">
                        <div class="card-header pb-0 text-left bg-transparent">
                            <h3 class="font-weight-bolder text-info text-gradient">Welcome back</h3>
                            <p class="mb-0">Enter your email and password to sign in</p>
                        </div>
                        <div class="card-body">
                            <form role="form text-left"
                                  method="post"
                                  action="{{route('admin.login')}}">
                                @csrf
                                <label>Email</label>
                                <div class="mb-3">
                                    <input type="email" class="form-control" placeholder="Email"
                                           aria-label="Email" aria-describedby="email-addon" name="email"
                                           value="{{ old('email') }}">
                                </div>
                                <label>Password</label>
                                <div class="mb-3">
                                    <input type="password" class="form-control"
                                           placeholder="Password" aria-label="Password"
                                           aria-describedby="password-addon" name="password">
                                </div>
{{--                                <div class="form-check form-switch">--}}
{{--                                    <input class="form-check-input" type="checkbox" id="rememberMe" checked="">--}}
{{--                                    <label class="form-check-label" for="rememberMe">Remember me</label>--}}
{{--                                </div>--}}
                                <div class="text-center">
                                    <button type="submit" class="btn bg-gradient-info w-100 mt-4 mb-0">Sign in</button>
                                </div>
                            </form>
                        </div>
{{--                        <div class="card-footer text-center pt-0 px-lg-2 px-1">--}}
{{--                            <p class="mb-4 text-sm mx-auto">--}}
{{--                                Don't have an account?--}}
{{--                                <a href="javascript:;" class="text-info text-gradient font-weight-bold">Sign up</a>--}}
{{--                            </p>--}}
{{--                        </div>--}}
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="oblique position-absolute top-0 h-100 d-md-block d-none me-n8">
                        <div class="oblique-image bg-cover position-absolute fixed-top ms-auto h-100 z-index-0 ms-n6" style="background-image:url('{{asset('dashboard/assets/img/curved-images/curved6.jpg')}}"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- -------- START FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
{{--<footer class="footer py-4 fixed-bottom">--}}
{{--    <div class="container">--}}
{{--        <div class="row">--}}
{{--            <div class="col-lg-8 mb-4 mx-auto text-center">--}}
{{--                <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">--}}
{{--                    Company--}}
{{--                </a>--}}
{{--                <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">--}}
{{--                    About Us--}}
{{--                </a>--}}
{{--                <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">--}}
{{--                    Team--}}
{{--                </a>--}}
{{--                <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">--}}
{{--                    Products--}}
{{--                </a>--}}
{{--                <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">--}}
{{--                    Blog--}}
{{--                </a>--}}
{{--                <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">--}}
{{--                    Pricing--}}
{{--                </a>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</footer>--}}
<!-- -------- END FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
<!--   Core JS Files   -->
<script src="{{asset('dashboard/assets/js/core/popper.min.js')}}"></script>
<script src="{{asset('dashboard/assets/js/core/bootstrap.min.js')}}"></script>
<script src="{{asset('dashboard/assets/js/plugins/smooth-scrollbar.min.js')}}"></script>
<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="{{asset('dashboard/assets/js/soft-ui-dashboard.min.js?v=1.0.1')}}"></script>
<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>

</html>



{{--<!doctype html>--}}
{{--<html lang="en">--}}

{{--<head>--}}
{{--    <title>Login | Admin</title>--}}
{{--    <meta charset="utf-8">--}}
{{--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--}}
{{--    <link rel="stylesheet" href="{{asset('dashboard/dist/styles.css')}}">--}}
{{--    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"--}}
{{--          crossorigin="anonymous">--}}
{{--    <style>--}}
{{--        .login{--}}
{{--            background: url('{{asset('dashboard/dist/images/login-new.jpeg')}}')--}}
{{--        }--}}
{{--    </style>--}}
{{--</head>--}}

{{--<body class="h-screen font-sans login bg-cover">--}}

{{--@include('sweetalert::alert')--}}

{{--<div class="container mx-auto h-full flex flex-1 justify-center items-center">--}}
{{--    <div class="w-full max-w-lg">--}}
{{--        <div class="leading-loose">--}}
{{--            <form class="max-w-xl m-4 p-10 bg-white rounded shadow-xl"--}}
{{--                  method="post"--}}
{{--                  action="{{route('admin.login')}}">--}}
{{--                @csrf--}}
{{--                <p class="text-gray-800 font-medium text-center text-lg font-bold">Login</p>--}}

{{--                <div class="">--}}
{{--                    <label class="block text-sm text-gray-600" for="email">Email</label>--}}
{{--                    <input class="w-full px-5 py-1 text-gray-700 bg-gray-200 rounded" id="email"--}}
{{--                           type="email"  name="email"--}}
{{--                           value="{{ old('email') }}" autocomplete="email" autofocus placeholder="Email" aria-label="Email">--}}
{{--                </div>--}}
{{--                <div class="mt-2">--}}
{{--                    <label class="block text-sm text-gray-600" for="password">Password</label>--}}
{{--                    <input class="w-full px-5  py-1 text-gray-700 bg-gray-200 rounded" id="password"--}}
{{--                           type="password" name="password" placeholder="*******" aria-label="password">--}}
{{--                </div>--}}
{{--                <div class="form-group row">--}}
{{--                    <div class="col-md-6 offset-md-4">--}}
{{--                        <div class="form-check">--}}
{{--                            <label class="form-check-label" for="forget_password">--}}
{{--                                <a href="{{ route('forget.password.get') }}">@lang('site.forget_password')</a>--}}
{{--                            </label>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="mt-4 items-center justify-between" style="display: flex;justify-content: space-between">--}}
{{--                    <button class="px-4 py-1 text-white font-light tracking-wider bg-gray-900 rounded" type="submit">Login</button>--}}
{{--                    <a class="inline-block right-0 align-baseline  font-bold text-sm text-500 hover:text-blue-800"  href="{{ route('forget.password.get') }}">@lang('site.forget_password')</a>--}}
{{--                </div>--}}
{{--                <a class="inline-block right-0 align-baseline font-bold text-sm text-500 hover:text-blue-800" href="#">--}}
{{--                    Not registered ?--}}
{{--                </a>--}}
{{--            </form>--}}

{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}
{{--</body>--}}

{{--</html>--}}