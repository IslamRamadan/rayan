@extends('layouts.front')
@section('title')
    @lang('site.home')

@endsection
@section('content')
    <?php use App\User; ?>
    {{-- {{ dd(Auth::user()->country->name_ar)}} --}}

    @if (session()->get('order'))
        <?php $invoice = session()->get('order'); ?>
        {{-- <h1>The name of fatorah is {{session()->get( 'order' )->name}}</h1> --}}
        <div class="  col-md-5 d-md-block" style="margin: 20px auto !important">
            <div class="table_block table-responsive dir-rtl">
                <table class="table table-bordered">
                    <thead class="btn-dark">

                        <tr>
                            <th colspan="2" class="text-center">@lang('site.order_summary')</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.invoice_id')</th>
                            <td>{{ $invoice->invoice_id }}</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.total_price')</th>
                            <td>{{ $invoice->total_price }} @lang('site.kwd')</td>

                        </tr>
                        <th scope="row" class="btn-dark">@lang('site.email')</th>
                        <td>{{ $invoice->email }}</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.phone')</th>
                            <td>{{ $invoice->phone }}</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.address1')</th>
                            <td>{{ $invoice->address1 }}</td>

                        </tr>

                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.name')</th>
                            <td>{{ $invoice->name }}</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.total_quantity')</th>
                            <td>{{ $invoice->total_quantity }}</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.created_at')</th>
                            <td>{{ $invoice->created_at }}</td>

                        </tr>

                    </tbody>
                </table>
            </div>
        </div>








        {{ Session::forget('order') }}

        {{-- @dd( "The name of fatorah is ".session()->get( 'order' )->name) --}}
        {{-- @dd( "The name of fatorah is ".session()->get( 'order' )->name) --}}

    @endif

    <div class="text-dir new1 " style="background-image:url({{ asset('/storage/' . $my_setting->ad_image) }})">

        <h1 class="c-w">

        </h1>
        <p class="c-w ">

        </p>

    </div>

    <!-----start carousel --->
    <div id="carouselExampleIndicators" class="carousel slide relative" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <?php
            $i = 0;
            ?>
            @foreach ($sliders as $one)
                <div class="carousel-item  @if ($i == 0) active @endif ">
                    <img class=" w-100 h " src="{{ asset('storage/' . $one->img) }}" alt="1 slide"
                        style="height: 70vh">
                    @if (app()->getLocale() == 'en')
                        <div class="abs w-100">
                            <p class="c-w mr-0">{{ $one->description_en }}</p>
                            <h1 class=""> {{ $one->name_en }}</h1>
                            <button class=" btn btn-danger">@lang('site.shop_now') <i class="far fa-heart"></i></button>
                    </div> @else
                        <div class="abs w-100">
                            <p class="c-w mr-0">{{ $one->description_ar }}</p>
                            <h1 class=""> {{ $one->name_ar }}</h1>
                            <button class=" btn btn-danger">@lang('site.shop_now') <i class="far fa-heart"></i></button>
                        </div>
                    @endif


                </div>
                <?php
                $i++;
                ?>
            @endforeach


        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon " aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!--- end head --->
    <br>

    <div class="container pad-0 ">

        <br>
        <h2 class="text-center  d-flex justify-content-between">
            <b></b>
            <span>
                @lang('site.basic_categories')
            </span>
            <b></b>
        </h2>
        <br><br>

        <div class="row">

            <div class="col-12 m-auto pad-0">
                <ul class="tablinks  row MyServices mr-0 pad-0 text-center swiper mySwiper"
                    style="list-style-type: none;justify-content: center;flex-wrap:wrap">
                    <div class="swiper-wrapper">
                        @if ($system_basic_categories->count() > 0)

                            @foreach ($system_basic_categories as $b)


                                <li class="swiper-slide in active col-md-4 col-6 col-lg-3 islam" >
                                    <div class=" product relative" style="display:flex;flex-direction:column">
                                        {{-- <div class="  heart "><i class="far fa-heart "></i></div> --}}

                                        <a href="{{ route('category', [1, $b->id]) }}" class="">
                                            <img src="{{ asset('/storage/' . $b->image_url) }}"
                                                onerror="this.onerror=null;this.src='{{ asset('front/img/5.jpg') }}'"
                                                width="100%" class="show-img">
                                            <img src="{{ asset('/storage/' . $b->image_url) }}"
                                                onerror="this.onerror=null;this.src='{{ asset('front/img/5.jpg') }}'"
                                                width="100%" class="hide-img">

                                        </a>
                                        <div>
                                            <h5 style="padding: 7px ;">
                                                @if (app()->getLocale() == 'en')
                                                    {{ $b->name_en }}
                                                @else
                                                    {{ $b->name_ar }}
                                                @endif

                                            </h5>
                                        </div>
                                    </div>
                                </li>


                            @endforeach

                        @endif
                    </div>
                </ul>
            </div>
        </div>
        <br><br>
    </div>


    <div class="container pad-0 ">

        <br>
        <h2 class="text-center  d-flex justify-content-between">
            <b></b>
            <span class="d-none d-md-block">@lang('site.fashion_world')

            </span>
            <b></b>
        </h2>
        <br class="d-none d-md-block">
        <br class="d-none d-md-block">

        <div class="row dir-rtl">

            <div class="col-lg-4 col-md-4 col-sm-12 pad-0 fashion text-dir">
                <br>
                <h1>@lang('site.new_arrival')</h1>

                <p>@lang('site.discover_new') </p>
                <button class="gq gr gs dg ck dh di cn gt c gu gv cq p cr gw gx gy">
                    <div class="text-center">@lang('site.new_in')</div>
                </button>
            </div>

            <div class="col-lg-8 col-md-8 col-sm-12   pad-0">

                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        @foreach ($new_arrive as $p)


                            <div class="swiper-slide" data-swiper-autoplay="2000">
                                <div class=" product relative">
                                    <div class="  heart ">
                                        <a href="#" class="addToWishList text-white" data-product-id="{{ $p->id }}">
                                            <i class="far fa-heart "></i>
                                        </a>

                                    </div>
                                    <div style="flex-direction: column;display: flex">
                                        <div>
                                            <a href="{{ route('product', $p->id) }}" class="test">

                                                <img src="{{ asset('/storage/' . $p->img) }}"
                                                    onerror="this.onerror=null;this.src='{{ asset('front/img//3.jpg') }}'"
                                                    width="100%" class="show-img">
                                                @if ($img = App\ProdImg::where('product_id', $p->id)->first())
                                                    <img src="{{ asset($img->img) }}" width="100%"
                                                        class="hide-img">
                                                @else
                                                    <img src="{{ asset('/storage/' . $p->img) }}" width="100%"
                                                        class="hide-img">
                                                @endif
                                            </a>
                                        </div>

                                        <div class="text-dir">
                                            <p class="mr-0">
                                                <a href="{{ route('product', $p->id) }}">
                                                    @if (Lang::locale() == 'ar')
                                                        {{ $p->title_ar }}

                                                    @else

                                                        {{ $p->title_en }}

                                                    @endif


                                                </a>
                                            </p>
                                            <h6><a href="{{ route('product', $p->id) }}">


                                                    @if (Lang::locale() == 'ar')
                                                        {{-- {{$p->basic_category->name_ar}}
                                            -
                                            {{$p->category->name_ar}} --}}
                                                        <?php $pieces = explode(' ', $p->description_ar);
                                                        $first_part = implode(' ', array_splice($pieces, 0, 4)); ?>
                                                        {{ $first_part }}
                                                    @else

                                                        {{-- {{$p->basic_category->name_en}}
                                            -
                                            {{$p->category->name_en}} --}}
                                                        <?php $pieces = explode(' ', $p->description_en);
                                                        $first_part = implode(' ', array_splice($pieces, 0, 4)); ?>
                                                        {{ $first_part }}
                                                    @endif


                                                </a></h6>
                                            <h5>


                                                @auth()
                                                    {{ Auth::user()->getPrice($p->price) }}
                                                    {{ Auth::user()->country->currency->code }}
                                                @endauth
                                                @guest()
                                                    @if (Cookie::get('name'))
                                                        {{ number_format($p->price / App\Country::find(Cookie::get('name'))->currency->rate, 2) }}
                                                        {{ App\Country::find(Cookie::get('name'))->currency->code }}
                                                    @else
                                                        {{ $p->price }}
                                                        @lang('site.kwd')
                                                    @endif
                                                @endguest

                                            </h5>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        @endforeach

                    </div>

                </div>











            </div>

        </div>
        <br><br>
    </div>
    <div class="container pad-0 d-md-none">
        <h2 class="text-center  d-flex justify-content-between">
            <b></b>
            <span>@lang('site.fashion_world')

            </span>
            <b></b>
        </h2>
        <br>
    </div>
    @foreach ($posts as $post)

        <div class="container dir-rtl" style="max-width: 1000px">

            <div class="row">
                <div class="col-md-6 ml-auto order-md-2 align-self-center">
                    <div class="site-block-cover-content text-center">
                        <!-- <h2 class="sub-title">#The world talk about fasion</h2> -->
                        <a href="{{ route('post', $post->id) }}">
                            @if (app()->getLocale() == 'en')
                                <h1>{{ $post->title_en }}</h1>
                            @else
                                <h1>{{ $post->title_ar }}</h1>
                            @endif
                        </a>

                        <a href="{{ route('post', $post->id) }}" class="btn bg-main mt-5">@lang('site.read_more')</a>
                    </div>
                </div>
                <div class="col-md-6 order-1 align-self-end">
                    <a href="{{ route('post', $post->id) }}"><img src="{{ asset('/storage/' . $post->img1) }}"
                            alt="Image" class="img-fluid" data-pagespeed-url-hash="799042288"
                            onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></a>
                </div>
            </div>
        </div>
        <br><br>

    @endforeach






    <!-----start  --->


















    <script>
        $(document).on('click', '.addToWishList', function(e) {

            e.preventDefault();
            @guest()
                // $('.not-loggedin-modal').css('display','block');
                // console.log('You are guest'

                {{-- {{\RealRashid\SweetAlert\Facades\Alert::error('error', 'Please Login first!')}} --}}
                Swal.fire({

                icon: '?',
                title:'Login first!',
                confirmButtonColor: '#ec7d23',
                position:'bottom-start',
                showCloseButton: true,
                })
            @endguest
            @auth
                $.ajax({
                type: 'get',
                url:"{{ route('wishlist.store') }}",
                data:{
                'productId':$(this).attr('data-product-id'),
                },
                success:function (data) {
                if (data.message){
                Swal.fire({
                icon: '?',
                confirmButtonColor: '#ec7d23',
                position:'bottom-start',
                showCloseButton: true,
                title: 'Added successfully!',
                showConfirmButton: false,
                timer: 1500
                })
                {{-- {{\RealRashid\SweetAlert\Facades\Alert::error('ok', 'ok!')}} --}}

                }
                else {
                // alert('This product already in you wishlist');
                Swal.fire({
                icon: '?',
                confirmButtonColor: '#ec7d23',
                position:'bottom-start',
                showCloseButton: true,
                title: 'This product already in you wishlist',
                showConfirmButton: false,
                timer: 1500
                })

                {{-- {{\RealRashid\SweetAlert\Facades\Alert::error('no', 'this product added already!')}} --}}

                }
                }
                });
            @endauth


        });
    </script>
@endsection
