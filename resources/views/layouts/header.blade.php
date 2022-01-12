<html dir="ltr" lang="{{ app()->getLocale() }}">

<head>
    <meta charset="utf-8">
    {{-- <meta name="viewport" content="width=device-width, initial-scale=1"> --}}
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="{{ asset('front/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('front/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('front/css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('front/css/main-style.css') }}">
    <link rel="stylesheet" href="{{ asset('front/css/media.css') }}">
    {{-- <link rel="stylesheet" href="{{ asset('front/css/owl.carousel.min.css') }}"> --}}

    <!-- slick css-->
    <link rel="stylesheet" type="text/css" href="{{ asset('front/css/slick.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('front/css/slick-theme.css') }}" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    {{-- <link rel="dns-prefetch" href="//fonts.gstatic.com"> --}}
    {{-- <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet"> --}}

    <link rel="stylesheet" href="{{ asset('front/css/animate.css') }}">
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/duotone.css"
        integrity="sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ" crossorigin="anonymous" />
    {{-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/fontawesome.css"
        integrity="sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l" crossorigin="anonymous" /> --}}
    <link href="{{ asset('front/img/logo1.PNG') }}" rel="icon" type="image/png">
    {{-- <link href="//db.onlinewebfonts.com/c/be395203fb38e2f170265aa2a9785467?family=M+Sung+PRC" rel="stylesheet" --}}
        {{-- type="text/css" /> --}}
         {{-- slider ismail start --}}
    {{-- <link rel="stylesheet" href="{{ asset('front/assets/css/bootstrap..min.css')}}"> --}}
    {{-- <link rel="stylesheet" href="{{ asset('front/assets/css/boxicons.min.css')}}"> --}}
    <link rel="stylesheet" href="{{ asset('front/assets/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{ asset('front/assets/css/animate.min.css')}}">
    <link rel="stylesheet" href="{{ asset('front/assets/css/style.css')}}">

    {{-- slider ismail end --}}


    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
    <style>
        footer {
       
             background-size: cover;
        }
        .blog-slides .owl-item {
            margin: 0 16px !important;
        }
        .owl-carousel .owl-stage-outer {
            position: relative;
            height: 250px !important;
        }
        .heart2 {

            right: 35px !important;

        }

        .title-span {
            display: block;
        }

        .icon-container div {
            width: 150px;
            height: 150px;
        }


        @media only screen and (max-width: 960px) {
            .sidbar.bg-light.text-dir.dir-rtl.open-sidbar {
                height: 93vh !important;
            }
           
            .title-span {
                display: none;
            }

            .icon-container div {
                width: 100px;
                height: 100px;
            }
        }

    </style>
    <style>

        .middle {
            transition: .5s ease;
            opacity: 0;
            position: absolute;
            top: 100%;
            left: 50%;
            width: 100%;
            right: 0 !important;
            left: 0 !important;
            transform: translate(0, -98%);
            -ms-transform: translate(-50%, -50%);
            text-align: center;
          }
          .middle .btn.btn-danger{
            width: 100%;
            background-color: rgba(0,144,69,1);
              border-color: rgba(0,144,69,1);
          }

    </style>

    {{--  new style  --}}
    <style>
        .navbar{
     background: #fff;
     padding-top: 0;
     padding-bottom: 0;
}
.logo-image {
    width: 120px;
}
 .navbar-light .navbar-brand {
     color: #7aa93c;
}
 .navbar-light .navbar-nav .nav-link {
     color: #7aa93c;
}
 .navbar-light .navbar-brand:focus, .navbar-light .navbar-brand:hover {
     color: #7aa93c;
}
 .navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
     color: #fff;
}
 .navbar-light .navbar-nav .nav-link{
     padding-top: 22px;
     padding-bottom: 22px;
     transition: 0.3s;
     padding-left: 24px;
     padding-right: 24px;
         font-size: 14px;
}
 .navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover{
     background: #7aa93c;
     transition: 0.3s;
}
.dropdown-item:focus, .dropdown-item:hover {
    color: #fff;
    text-decoration: none;
    background-color: #7aa93c !important;
}
.sm-menu{
    border-radius: 0px;
    border: 0px;
    top: 97%;
    box-shadow: rgba(173, 173, 173, 0.2) 1px 3px 4px 0px;
}
.dropdown-item {
    color: #7aa93c;
        font-size: 14px;
}
.dropdown-item.active, .dropdown-item:active {
    color: #fff;
    text-decoration: none;
    background-color: #7aa93c;
}
.navbar-toggler{
    outline: none !important;
}
.navbar-tog{
    color: #1ebdc2;
}
.megamenu-li {
	position: static;
}

.megamenu {
	position: absolute;
	width: 100%;
	left: 0;
	right: 0;
	padding: 15px;
}
.megamenu h6{
    margin-left: 21px;
}
.megamenu i{
    width: 20px;
    border: 1px solid;

}
#lblCartCount {

    margin-top: -30px;
}

a.dropdown-item {
    color: #ffffff !important;
    text-align: center;
}

.navbar-light .navbar-nav .nav-link {
    color: #7aa93c;
    font-size: 18px !important;
}
ul.navbar.nav.pad-0 {
    margin-right: 5px;
    margin-left: 5px;
}
.border-right {
    border-right: 1px solid #60410b85 !important;
}
a.nav-link:hover {
    border-radius: 15px;
    color: #ffffff !important;
}
.dropdown-menu.megamenu.sm-menu.border-top {
    color: #fff;
    background-color: #7aa93cd9;
}



.item-m-t {
    color:#fff;
    width: 52px;
    height: 52px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    background: url({{asset('upload/icon-bg.png')}}) center center no-repeat;
    cursor: pointer;
    -webkit-transition: all .3s ease-in;
    -moz-transition: all .3s ease-in;
    -ms-transition: all .3s ease-in;
    -o-transition: all .3s ease-in;
    transition: all .3s ease-in;
}
.item-m-t:hover {
    background: url({{asset('upload/icon-bg-1.png')}}) center center no-repeat;
}
.item-m-t a{
    color:#fff !important;
    }

    .item-m-t a.nav-link {
    padding: 16px !important;
}
        @media (min-width: 992px)
        {
            .col-sm-6.col-lg-3.border-right.mb-4 h6 a {
                border: 1px solid;
                padding: 5px 10px;
                font-size: initial;
                color:#fff;
            }
            .col-sm-6.col-lg-3.border-right.mb-4 h6 {
                margin: 0 0 10px;
                padding: 5px 10px;
                font-size: initial;
            }
        ul.navbar-nav.navbar-light {
            padding: 0px 160px;
        }
        .col-sm-6.col-lg-3.border-right.mb-4 {
                padding: 0 !important;
                overflow-y: hidden;
            }
            .col-md-8.row {
                padding: 0px !important;
            }
            a.dropdown-item {
                padding: 2px 10px !important;
            }
        }
        li.nav-item.relative.ul1.align-self-center.custom-nav-icon.d-flex a:hover {
            color: #6ba431 !important;
        }
        .owl-carousel .owl-dots.disabled, .owl-carousel .owl-nav.disabled {
            display: block !important;
        }
        .blog-slides.owl-theme:hover .owl-nav [class*=owl-], .blog-slides.owl-theme:focus .owl-nav [class*=owl-] {
            background-color: #88c442 !important;
            color: #fff;
            border: none;
        }
        .post-image img {
            width: 250px !important;
            height: 250px !important;
            border-radius: 50%;
        }
        .single-blog-post:hover .post-image img, .single-blog-post:focus .post-image img {
                /* zoom: 1; */
                transform: rotateY(
            180deg);
                -webkit-transform: rotateY(
            180deg);
                -ms-transform: rotateY(180deg);
                -o-transform: rotateY(180deg);
                -moz-transform: rotateY(180deg);
                transition: all 800ms ease 0s;
                -webkit-transition: all 800ms ease 0s;
                -moz-transition: all 800ms ease 0s;
                -ms-transition: all 800ms ease 0s;
                -o-transition: all 800ms ease 0s;
                /* opacity: .5 !important; */
                /* -webkit-transform: scale(1.07); */
                /* transform: scale(1.07); */
        }
        .cat_img_block .readmore {
            height: 85px;
            top: 70%;
        }
       .cat_img_block .readmore {
                display: block;
                height: 100%;
                opacity: 0;
                -khtml-opacity: 0;
                -webkit-opacity: 0;
                -moz-opacity: 0;
                position: absolute;
                top: 0;
                transition: all 800ms ease 0s;
                -webkit-transition: all 800ms ease 0s;
                -moz-transition: all 800ms ease 0s;
                -ms-transition: all 800ms ease 0s;
                -o-transition: all 800ms ease 0s;
                width: 100%;
            /*    background: conic-gradient(#ff000000 */
            /*0deg, #ff000000 */
            /*90deg, #8ab816ab */
            /*90deg, #8ab816ab */
            /*180deg, #8ab816ab */
            /*180deg, #8ab816ab */
            /*270deg, #0000ff00 */
            /*270deg);*/
            background: linear-gradient( #ffffff00 60%, #8ab816c7 60%);
                /* border-bottom-left-radius: 100px; */
                /* -webkit-border-bottom-left-radius: 100px; */
                -khtml-border-bottom-left-radius: 100px;
                -moz-border-bottom-left-radius: 100px;
                /* border-bottom-right-radius: 100px; */
                /* -webkit-border-bottom-right-radius: 100px; */
                -khtml-border-bottom-right-radius: 100px;
                -moz-border-bottom-right-radius: 100px;
                border-radius: 50%;
                    text-align: center;
        }
        .cat_img_block:hover .readmore {
            opacity: 1;
            -khtml-opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
            transition: all 800ms ease 0s;
            -webkit-transition: all 800ms ease 0s;
            -moz-transition: all 800ms ease 0s;
            -ms-transition: all 800ms ease 0s;
            -o-transition: all 800ms ease 0s;
        }
        .cat_img_block .readmore a {

            color: #ffffff;
            border-bottom: 1px solid #fff;
            padding-top: 70%;
            display: inline-block;
        }

        .h {
            object-fit: fill !important;
            /*height: 50vh !important;*/
            /*object-fit: cover;*/
        }

         @media (min-width: 0px) and (max-width: 425px) {
             #lblCartCount {
                margin: -40px 2px 0px;
            }
        .h {
            height: 40vh !important;
            object-fit: fill;
            margin-top: 0;
            }
            .carousel-inner {
            height: 30%;
        }
        .carousel {
            margin-top: 80px;
        }
        .new1 {
            margin-bottom: -75px;
            /* margin-top: 3px; */
        }
    }
    @media (min-width: 425px) and (max-width: 600px) {
         #lblCartCount {
                margin: -40px 2px 0px;
            }
        .h {
            height: 50vh !important;
            object-fit: fill;
            margin-top: 0 !important;
            }
             .carousel-inner {
            height: 50%;
        }
        .carousel {
                margin-top: 80px;
            }
    }
    @media (min-width: 424px) and (max-width: 572px) ,@media (min-width: 767px) and (max-width:821px){

        .carousel {
                margin-top: 0px !important;
            }
    }
    @media (min-width: 425px) and (max-width: 571px) {
        .h {
            height: 35vh !important;
            object-fit: fill;
            margin-top: 80px  !important;
            }
             .carousel-inner {
            height: 48%;
        }
        .carousel {
                margin-top: 80px;
            }
    }
    @media (min-width: 601px) and (max-width: 820px) {
        .h {
            height: 40vh !important;
            object-fit: fill;
        }
        .carousel-indicators {
            bottom: -17px !important;
        }
        .new1 {
            padding-top: 6vh;
        }
         .carousel-inner {
            height:40%;
        }

    }

     @media (min-width: 0px) and (max-width:576px) {
          a.dropdown-item {
                color: #000 !important;
                border: 1px solid #c9c7c730;
            }
             .col-md-8.col-md-12.row {
                height: 80vh;
                overflow: scroll;
                z-index: 100;
                width: 100%;
                padding: 0 !important;
                margin: 0 !important;
            }
            a#dropdown01 {
                padding: 0.5rem 1rem;
                font-size: 18px;
            }
       .header-web {
            display: none !important;
        }

    }
    a.nav-link.item-par {
        border: 1px solid;
        padding: 5px 10px;
        font-size: initial;
        color: #fff !important;
    }
    form#loginform {
        padding-top: 50px !important;
    }
    </style>


    <title>

        @if ($my_setting->site_name_en)

            {{ $my_setting->site_name_en }}

        @endif

    </title>

    <script>



    $(document).ready(function () {
        $('.navbar-light .dmenu').hover(function () {
                $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
            }, function () {
                $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
            });
        });

            $(document).ready(function() {
            $(".megamenu").on("click", function(e) {
                e.stopPropagation();
            });
        });

        $(document).ready(function() {
            // alert('hiiiiiiiiiiiiii')

            $('.circle').on('click', function(e) {
                e.preventDefault();
                alert('hola');
            })

            //TODO ::VIEW CART FIRST ITEM AND CALL THIS WHEN READY AND ON HOVER

            $('#cart-hover').on({
                mouseenter: function() {
                    // $('#cart-items').html('<p style="color:black;">wait  ... </p> ');
                    viewFromCart();
                    //stuff to do on mouse enter
                },
                mouseleave: function() {
                    //stuff to do on mouse leave
                    // alert('i am leaving')
                }
            });


            function viewFromCart() {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });

                $.ajax({
                    url: "{{ route('view.from.cart') }}",
                    method: 'get',
                    success: function(result) {
                        //CHECK SIZE VALUES
                        //CHECK HEIGHTS VALUE
                        // Swal.fire({
                        //     toast: true,
                        //     icon: 'success',
                        //     title: 'تمت الإضافه الي السله',
                        //     animation: false,
                        //     position: 'bottom',
                        //     showConfirmButton: false,
                        //     timer: 3000,
                        //     timerProgressBar: true,
                        //     didOpen: (toast) => {
                        //         toast.addEventListener('mouseenter', Swal.stopTimer)
                        //         toast.addEventListener('mouseleave', Swal.resumeTimer)
                        //     }
                        // });

                        //CART . HTML = RESULT
                        // location.reload();
                        // $('#cart-items').html(result);

                        $('#cart-items').html(result);

                        console.log(result);
                    },
                    error: function(error) {
                        // Swal.fire({
                        //     icon: 'error',
                        //     title: 'لم تكتمل العمليه ',
                        // })
                        console.log(error);
                    }
                });
            }

            // viewFromCart();
        })
    </script>
    @yield('css')
</head>


<body>
    {{--  <div class="vwrap">
        <div class="vmove">

            @foreach (App\News::where('appearance', 1)->get() as $news)
                <div class="vitem">
                    @if (app()->getLocale() == 'en')
                        {{ $news->content_en }}
                    @else
                        {{ $news->content_ar }}
                    @endif


                </div>
            @endforeach
        </div>
    </div>  --}}


{{--  <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="https://dummyimage.com/1200x400/1EBDC2/ffffff&text=Bootstrap+Mega+Menu" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://dummyimage.com/1200x400/1EBDC2/ffffff&text=Bootstrap+Mega+Menu" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://dummyimage.com/1200x400/1EBDC2/ffffff&text=Bootstrap+Mega+Menu" class="d-block w-100" alt="...">
    </div>
  </div>
</div>  --}}
    <div class="container-fluid pad-0 bg-white  head-flex d-md-flex d-sm-none header-web" >
        <!-- <div class="container  "> -->
        <div class="align-self-center ml-4">
            <ul class="navbar-nav1  mr-auto ">

                <li class="nav-item item-m-t"><a class="nav-link " href="{{ route('myaccount') }}"><i
                            class="far fa-user sml-fa" style="font-size: 30px;"></i> </a></li>
                <li class="nav-item  relative ul1 align-self-center custom-nav-icon d-flex">
                    @if (app()->getLocale() == 'en')
                        @foreach (LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                            @if ($localeCode == 'en')
                                @continue
                            @endif

                            <a class="nav-link" rel="alternate" hreflang="{{ $localeCode }}"
                                href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                                <img src="{{ asset('front/img/kuwait.png') }}" width="20">
                                <span class="LocaleSwitch2__diamond-divider "></span>
                                Switch to Arabic
                            </a>
                        @endforeach
                    @else
                        @foreach (LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                            @if ($localeCode == 'ar')
                                @continue
                            @endif

                        <a class="nav-link " rel="alternate" hreflang="{{ $localeCode }}"
                        href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}"  style="font-size: 12px">  التحويل الي الانجليزيه<span class="LocaleSwitch2__diamond-divider"></span><img src="{{ asset('front/img/en.png') }}" width="20"> </a>

                        @endforeach
                    @endif

                    {{-- <a class="nav-link " href="{{route('/')}}" style="font-size: 12px"> <img src="{{asset('front/img/en.png')}}" width="20"><span class="LocaleSwitch2__diamond-divider"></span> Switch to Arabic </a> --}}


                </li>

            </ul>
        </div>

        <div>
            <a class="nav-link " href="{{ route('/') }}" style="padding: 3px !important;"> <img class="logo-image"
                    src="{{ asset('/storage/' . $my_setting->logo) }}" width="50"></a>
        </div>

        <div class="text-right align-self-center mr-4">
            <nav class="navbar navbar-expand-md pad-0 p-0 ">
                <ul class="navbar-nav1  mr-auto ">
                    <li class="nav-item  item-m-t relative ul1 mr-3">
                        <a class="nav-link " href="">
                            <i class="fas fa-search sml-fa" style="font-size: 25px;"></i></a>
                        <div class=" ul2  bg-w  text-left "
                            style="padding: 10px;width: 200px;background: transparent !important;box-shadow: none;border: none;">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" id="search-word" name="search"
                                placeholder="search " value="islam two" >
                                <div class="input-group-append">
                                    <button class="input-group-text bg-main"> <i
                                            class="fas fa-search sml-fa" id="search-submit"></i></button>
                                </div>
                            </div>

                        </div>

                    </li>


                    <li class="nav-item mr-3 item-m-t"><a class="nav-link " href="{{ route('wishlist.view') }}"><i
                                class="far fa-heart sml-fa" style="font-size: 25px;"></i> </a></li>
                    <li class="nav-item mr-3 item-m-t" id="cart-hover"><a class="nav-link "
                            href="{{ route('cart') }}"><i class="fas fa-shopping-cart sml-fa"
                                style="font-size: 25px;"></i><span class='badge badge-warning' id='lblCartCount'>
                                {{ Session::has('cart_details') ? Session::get('cart_details')['totalQty'] : '0' }}
                            </span>
                        </a>
                        <div class=" ul2  bg-w  text-right " style="padding: 10px;width: 300px">

                            <div id="cart-items">
                                <strong style="text-align: center;margin:auto;font-size:20px">

                                    @lang('site.bin_empty')

                                </strong>
                            </div>

                            <a href="{{ route('product.shoppingCart') }}"
                                class="btn bg-main w-100">@lang('site.view_cart')</a>
                            <br><br>
                            <a href="{{ route('checkout') }}" class="btn bg-main w-100">
                                @lang('site.checkout')
                            </a>
                        </div>

                    </li>
                </ul>


            </nav>
        </div>

        <!-- </div> -->
    </div>

    <div class="container-fluid pad-0 bg-b d-md-block d-none head_rtl" style="background: white !important">
        <div class="d-flex justify-content-center  ">
            <div class="float-left">

    <nav class="navbar navbar-expand-lg navbar-light sticky-top">
    <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mobile_nav" aria-controls="mobile_nav" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mobile_nav">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0 float-md-right">
        </ul>
        <ul class="navbar-nav navbar-light">
            <li class="nav-item"><a class="nav-link" href="{{ route('/') }}">@lang('site.home')</a></li>
            {{--  <li class="nav-item dmenu dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Services
                </a>
                <div class="dropdown-menu sm-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Software Development</a>
                    <a class="dropdown-item" href="#">Web Designing & Development</a>
                    <a class="dropdown-item" href="#">Mobile Application</a>
                    <a class="dropdown-item" href="#">Business Solutions & Business Process</a>
                    <a class="dropdown-item" href="#">Digital Marketing & SEO Services</a>
                    <a class="dropdown-item" href="#">Web Hosting & Maintenance</a>
                    <a class="dropdown-item" href="#">Cyber Security</a>
                    <a class="dropdown-item" href="#">Block Chain Implementation</a>
                    <a class="dropdown-item" href="#">Big Data</a>
                </div>
            </li>
            <!--========-->  --}}
            <li class="nav-item dropdown megamenu-li dmenu">
                <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">@lang('site.categories')</a>
                <div class="dropdown-menu megamenu sm-menu border-top" aria-labelledby="dropdown01">
                    <div class="row">
                        <div class="col-md-8 col-md-12 row">
                            @foreach (\App\BasicCategory::all() as $b)
                                <div class="col-sm-6 col-lg-3 border-right mb-4">
                                    <h6><a class="nav-link "
                                    href="{{ route('category', [1, $b->id]) }}">
                                    @if (app()->getLocale() == 'en')
                                        {{ $b->name_en }}
                                    @else
                                        {{ $b->name_ar }}
                                    @endif

                                </a></h6>

                                     @if (\App\Category::where('basic_category_id', $b->id)->count() > 0)
                                        @foreach (\App\Category::where('basic_category_id', $b->id)->get() as $c)
                                            <a class="dropdown-item" href="{{ route('category', [2, $c->id]) }}"><i class="fas fa-seedling"></i>
                                                @if (app()->getLocale() == 'en')
                                                    {{ $c->name_en }}
                                                @else
                                                    {{ $c->name_ar }}
                                                @endif</a>

                                        @endforeach
                                    @endif
                                </div>

                            @endforeach
                        </div>
                        <!--<div class='col-md-4'>-->
                        <!--    <img class="w-100 h-100"src="{{ asset('/storage/' . $my_setting->ad_image) }}" alt="megamenu-add">-->

                        <!--</div>-->
                    </div>
                </div>
            </li>
            <!--=========-->
            {{--  <li class="nav-item"><a class="nav-link" href="#">Careers</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact us</a></li>  --}}
            <li class="nav-item "><a class="nav-link " href="{{ route('policy') }}">
                                @lang('site.policy')

                            </a></li>
                        <li class="nav-item "><a class="nav-link " href="{{ route('checkout') }}">
                                @lang('site.payment')
                            </a></li>

                        <li class="nav-item "><a class="nav-link " href="{{ route('contact.us') }}">
                                @lang('site.contact_us')
                            </a></li>
        </ul>
        </div>
    </div>
</nav>

            </div>

            <div class="clearfix"></div>
        </div>
    </div>

    <nav class="d-md-none d-block bg-white " style="position: fixed;
    top: 0;
    z-index: 3;
    width: -webkit-fill-available;">

        <div class=" d-flex justify-content-between ">
            <div class="relative" style="align-self: center">
               <div class="d-flex">
                 @if(!isset($index))
                  <div class="nav-link p-0">
                      <button class="navbar-toggler  btn bg-none " onclick="history.back()" type="button">
                          <i class=" fas  fa-arrow-left " style="font-size: 18px;color:#000"></i>
                      </button>
                  </div>
                @endif
                <div class="nav-link p-0">
                    <button class="navbar-toggler  btn bg-none " type="button">
                        <i class=" fas fa-bars " style="font-size: 18px;color:#000"></i>
                    </button>
                </div>
            </div>


                <div class="sidbar bg-light text-dir dir-rtl" style="overflow: scroll;
                max-height: 91vh;">
                    <div class="border-bottom">
                        <br>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="search-word2" name="search"
                                placeholder="search " value="" >
                            <div class="input-group-append">
                                <button class="input-group-text bg-main" id="search-submit2"><i
                                        class="fas fa-search "></i>
                                </button>
                            </div>
                        </div>
                        <br>
                    </div>
                    {{-- @guest()

                    <div class="nav-link relative ul1">
                        <a style="display: flex;justify-content: space-between;align-items: center">
                            @if (Cookie::get('name'))
                                @if (app()->getLocale() == 'en')

                                    {{App\Country::find(Cookie::get('name'))->name_en}}
                                @else
                                    {{App\Country::find(Cookie::get('name'))->name_ar}}
                                @endif
                                <img src="{{ asset('storage/'.App\Country::find(Cookie::get('name'))->image_url)}}" width="20px"> <i
                                        class="fas fa-chevron-down "></i>
                            @else
                                @if (app()->getLocale() == 'en')

                                    Choose country
                                @else
                                    اختر دوله

                                @endif
                            @endif

                        </a>
                        <div class=" ul2  bg-w  text-left ">

                            <div class=" ul2  bg-w  text-left ">


                                @foreach (App\Country::all() as $country)

                                    <a class="dropdown-item" rel="alternate"
                                       href="{{route('cookie.set',$country->id)}}">
                                        @if (app()->getLocale() == 'en')
                                            {{ $country->name_en}}

                                        @else
                                            {{ $country->name_ar}}

                                        @endif


                                        <img src="{{asset('/storage/'.$country->image_url)}}"
                                             width="20">
                                    </a>


                                @endforeach

                            </div>

                        </div>
                    </div>
                @endguest --}}
                <ul class="navbar-nav navbar-light">
                <li class="nav-item dropdown megamenu-li dmenu">
                    <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">@lang('site.categories')</a>
                    <div class="dropdown-menu megamenu sm-menu border-top" aria-labelledby="dropdown01">
                        <div class="row">
                            <div class="col-md-8 col-md-12 row">
                                @foreach (\App\BasicCategory::all() as $b)
                                    <div class="col-sm-6 col-lg-3 border-right mb-4">
                                        <h6><a class="nav-link item-par"
                                        href="{{ route('category', [1, $b->id]) }}">
                                        @if (app()->getLocale() == 'en')
                                            {{ $b->name_en }}
                                        @else
                                            {{ $b->name_ar }}
                                        @endif

                                    </a></h6>

                                         @if (\App\Category::where('basic_category_id', $b->id)->count() > 0)
                                            @foreach (\App\Category::where('basic_category_id', $b->id)->get() as $c)
                                                <a class="dropdown-item" href="{{ route('category', [2, $c->id]) }}"><i class="fas fa-seedling"></i>
                                                    @if (app()->getLocale() == 'en')
                                                        {{ $c->name_en }}
                                                    @else
                                                        {{ $c->name_ar }}
                                                    @endif</a>

                                            @endforeach
                                        @endif
                                    </div>

                                @endforeach
                            </div>
                            <!--<div class='col-md-4'>-->
                            <!--    <img class="w-100 h-100"src="{{ asset('/storage/' . $my_setting->ad_image) }}" alt="megamenu-add">-->

                            <!--</div>-->
                        </div>
                    </div>
                </li>
              </ul>
                <!--=========-->
                    <ul class="navbar nav pad-0  border-bottom" style="justify-content: space-evenly ">

                        @if (\App\Settings::all()->first()->facebook)
                            <li class="nav-item "><a class=" " href="{{ $my_setting->facebook }}"
                                    target="_blank" title="facebook"><i class="fab fa-facebook-f"></i> </a>
                            </li>
                        @endif

                        @if (\App\Settings::all()->first()->instagram)
                            <li class="nav-item "><a href="{{ $my_setting->instagram }}" target="_blank"
                                    title="instagram"><i class="fab fa-instagram"></i> </a>
                            </li>
                        @endif



                        @if (\App\Settings::all()->first()->twitter)
                            <li class="nav-item "><a class=" " href="{{ $my_setting->twitter }}"
                                    target="_blank" title="twitter"><i class="fab fa-twitter"></i>
                                </a></li>
                        @endif


                        @if (\App\Settings::all()->first()->email)
                            <li class="nav-item "><a class=" " href="mailto:{{ $my_setting->email }}"
                                    target="_blank" title="email"><i class="far fa-envelope"></i>
                                </a></li>
                        @endif

                        @if (\App\Settings::all()->first()->whatsapp)
                            <li class="nav-item "><a class=" "
                                    href="https://wa.me/{{ $my_setting->whatsapp }}" target="_blank" title="call us"><i
                                        class="fab fa-whatsapp"></i> </a>
                            </li>
                        @endif

                    </ul>


                    <div class="nav-link relative ul1">
                        <a style="display: flex;justify-content: space-between;align-items: center">
                            @if (app()->getLocale() == 'en')
                                English <img src="{{ asset('front/img/en.png') }}" width="20"> <i
                                    class="fas fa-chevron-down "></i>
                            @else
                                العربية
                                <img src="{{ asset('front/img/kuwait.png') }}" width="20"> <i
                                    class="fas fa-chevron-down "></i>
                            @endif

                        </a>
                        <div class=" ul2  bg-w  text-left ">

                            <div class=" ul2  bg-w  text-left ">


                                @foreach (LaravelLocalization::getSupportedLocales() as $localeCode => $properties)

                                    <a class="dropdown-item" rel="alternate" hreflang="{{ $localeCode }}"
                                        href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                                        {{ $properties['native'] }}
                                    </a>

                                @endforeach
                            </div>

                        </div>
                    </div>
                    <a class="nav-link  border-bottom" href="{{ route('policy') }}">@lang('site.privacy_policy')</a>
                    <a class="nav-link  border-bottom" href="{{ route('checkout') }}"> @lang('site.payment')</a>
                    <a class="nav-link  border-bottom" href="{{ route('contact.us') }}">@lang('site.contact_us')</a>
                    <a class="nav-link  border-bottom" href="{{ route('checkout') }}">@lang('site.checkout')</a>
                    <a class="nav-link  border-bottom" href="{{ route('cart') }}">@lang('site.shopping_cart')</a>
                    @guest()
                    <a class="nav-link  border-bottom" href="{{ route('login') }}"> @lang('site.login')</a>

                @else

                    <a class="nav-link  border-bottom" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                         document.getElementById('logout-form').submit();">
                        <div><span> log out</span></div>
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                @endguest
                </div>


            </div>

            <div>
                @auth
                    <a class="nav-link " href="{{ route('/') }}" style="padding-top: 12px;;margin-left:10px"> <img
                            src="{{ asset('/storage/' . $my_setting->logo) }}" width="60"></a>
                @endauth
                @guest
                    <a class="nav-link " href="{{ route('/') }}" style="padding-top: 12px"> <img
                            src="{{ asset('/storage/' . $my_setting->logo) }}" width="60"></a>

                @endguest

            </div>

            <!--islam here-->

            {{-- <div class="nav-item relative ul1"  id="cart-hover"  ><a class="nav-link " > --}}

            {{-- @lang('site.cart') / --}}
            {{--  --}}{{-- {{Session::has('cart_details')?Session::get('cart_details')['totalPrice']." DK":''}} --}}
            {{-- <i --}}
            {{-- class="fas fa-weight-hanging" ></i> --}}
            {{-- <sup --}}
            {{-- class="badge"> --}}
            {{-- {{Session::has('cart_details')? --}}
            {{-- Session::get('cart_details')['totalQty'] ." items":0}} --}}
            {{-- </sup> --}}


            {{-- </a> --}}
            {{-- <div class=" ul2  bg-w  text-right " style="padding: 10px;width: 300px"> --}}

            {{-- <div  id="cart-items"> </div> --}}

            {{-- <a href="{{route('product.shoppingCart')}}" --}}
            {{-- class="btn bg-main w-100">@lang('site.view_cart')</a> --}}
            {{-- <br><br> --}}
            {{-- <a href="{{route('checkout')}}" class="btn bg-main w-100"> --}}
            {{-- Check out --}}
            {{-- </a> --}}
            {{-- </div> --}}
            {{-- </div> --}}


            <ul class="navbar nav pad-0">
                @auth()
                    <li class="nav-item item-m-t">
                        <a class="nav-link " href="{{ route('myaccount') }}"> <i class="fas fa-user sml-fa"
                                style=""></i> </a>
                    </li>
                @endauth

                <li class="nav-item item-m-t"><a class="nav-link " href="{{ route('cart') }}"><i
                            class="fas fa-shopping-cart sml-fa" style="font-size: 25px"></i><span
                            class='badge badge-warning' id='lblCartCount'>
                            {{ Session::has('cart_details') ? Session::get('cart_details')['totalQty'] : '0' }}
                        </span>
                    </a> </li>


            </ul>

        </div>
    </nav>

    <script>
        $('#search-submit').on('click', function(e) {
            e.preventDefault();
            console.log('xxx');

            //TODO :: CALL AJAX

            let id = $('#id').val();
            let cat_or_sub = $('#cat_or_sub').val();
            let search = $('#search-word').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });

            $.ajax({
                type: 'GET',
                url: '{{ url('/searching') }}',
                data: {
                    id: id,
                    cat_or_sub: cat_or_sub,
                    search: search,
                },
                success: function(data) {
                    // $("#msg").html(data.msg);
                    console.log(data);
                    $('#content-container').html(data)

                }
            });
        })

        $('#search-submit2').on('click', function(e) {
            e.preventDefault();
            console.log('clicked');

            //TODO :: CALL AJAX

            let id = $('#id2').val();
            let cat_or_sub = $('#cat_or_sub2').val();
            let search = $('#search-word2').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });

            $.ajax({
                type: 'GET',
                url: '{{ url('/searching') }}',
                data: {
                    id: id,
                    cat_or_sub: cat_or_sub,
                    search: search,
                },
                success: function(data) {
                    // $("#msg").html(data.msg);
                    console.log(data);
                    $('#content-container').html(data)

                }
            });


        })
        $('#search-submit3').on('click', function(e) {
            e.preventDefault();

            //TODO :: CALL AJAX

            let id = $('#id2').val();
            let cat_or_sub = $('#cat_or_sub2').val();
            let search = $('#search-word3').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });

            $.ajax({
                type: 'GET',
                url: '{{ url('/searching') }}',
                data: {
                    id: id,
                    cat_or_sub: cat_or_sub,
                    search: search,
                },
                success: function(data) {
                    // $("#msg").html(data.msg);

                    //TODO :: CLOSE NAV BAR
                    console.log(data);
                    $('#content-container').html(data)

                }
            });


        })
    </script>
