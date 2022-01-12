@extends('dashboard.layouts.app')
@section('page_title')
    @lang('site.edit_page') :

    {{$page->page_title_ar}}  -  {{$page->page_title_en}}  @endsection


@section('style')
                <script src="//cdn.ckeditor.com/4.16.0/full/ckeditor.js"></script>

@endsection

@section('content')
    <form class="card col-md-6 col-12" style="margin: auto" action="{{route('pages.update.page' , $page->id)}}" method="post" enctype="multipart/form-data">
        @csrf


        <div class="card-body">

            <div class="form-group">
                <label for="name_ar">

                    @lang('site.page_ar')

                </label>
                <input value="{{ $page->page_title_ar}}"  type="text" name="page_title_ar"
                       class="form-control @error('page_title_ar') is-invalid @enderror" id="page_title_ar">
            </div>

            <div class="form-group">
                <label for="name_en">
                    @lang('site.page_en')

                </label>
                <input value="{{ $page->page_title_en}}"  type="text" name="page_title_en"
                       class="form-control @error('page_title_en') is-invalid @enderror" id="page_title_en">
            </div>


            <div class="form-group">
                <label for="page_details_ar">
                    @lang('site.page_details_ar')

                </label>
                <textarea  rows="5"  name="page_details_ar"
                          class="form-control @error('page_details_ar') is-invalid @enderror" id="page_details_ar">
                    {{ $page->page_details_ar}}
                </textarea>
                <script>
                        CKEDITOR.replace( 'page_details_ar' );
                </script>
            </div>


            <div class="form-group">
                <label for="page_details_en">
                    @lang('site.page_details_ar')

                </label>
                <textarea rows="5" name="page_details_en"
                       class="form-control @error('page_details_en') is-invalid @enderror" id="page_details_en">
                    {!! $page->page_details_en !!}
                </textarea>
                <script>
                        CKEDITOR.replace( 'page_details_en' );
                </script>
            </div>




        </div>

            <button type="submit" class="btn btn-primary">
                @lang('site.save')

            </button>

    </form>
@endsection
