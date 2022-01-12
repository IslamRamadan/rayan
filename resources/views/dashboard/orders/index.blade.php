@extends('dashboard.layouts.app')
@section('page_title')  @lang('site.paid_orders')  @endsection

@section('style')
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-3.6.0/jszip-2.5.0/dt-1.11.3/af-2.3.7/b-2.1.1/b-colvis-2.1.1/b-html5-2.1.1/date-1.1.1/sl-1.3.4/datatables.min.css"/>

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/v/dt/jq-3.6.0/jszip-2.5.0/dt-1.11.3/af-2.3.7/b-2.1.1/b-colvis-2.1.1/b-html5-2.1.1/date-1.1.1/sl-1.3.4/datatables.min.js"></script>


<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.1.0/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.1.0/js/buttons.print.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.1.0/js/buttons.colVis.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>


<style>
.img-col {
    margin: 0px !important;
    padding: 2px !important;
}
select#city_id {
    border: 1px solid #d6dadd;
    padding: 5px;
    border-radius: 7px;
}
</style>
@endsection
@section('content')
    <div class="container">
        <br>

        <div class="card-header pb-0">
          <form class="" action="{{ route('filter') }}" method="post">

            @csrf
            <div class="row form-group">
              <div class="col-md-3">
                  <label for="from">

                      @lang('site.from')

                  </label>
                  <input type="date" name="from"class="form-control @error('from') is-invalid @enderror" id="from" >
              </div>
              <div class="col-md-3">
                <label for="to">

                    @lang('site.to')

                </label>
                <input type="date" name="to" class="form-control @error('to') is-invalid @enderror" id="to" >
              </div>
              <div class="col-md-3">
                <label for="city_id">

                    @lang('site.city')

                </label>
                <select class=" w-100" name="city_id" class="form-control @error('city_id') is-invalid @enderror" id="city_id">

                  @isset($cities)
                  <option  value="0">@lang('site.out-delivery') </option>
                    @foreach($cities  as $item)
                        <option  value="{{$item->id}}">{{app()->getLocale()=='ar'?$item->name_ar:$item->name_en}} </option>
                    @endforeach

                  @else
                  <option disabled value="">@lang('site.not_found_city') </option>
                  @endisset
                </select>
              </div>
              <div class="col-md-3">
                <input type="hidden" name="filter" value="1">
                <button  class="btn btn-primary" name="button" >go</button>
              <!-- <input class="btn btn-primary" type="button"  value="go"> -->
              </div>
          </div>
          </form>
          <br>
            <h6>
                @lang('site.paid_orders')
            </h6>
        </div>
        <div class="card-body px-0 pt-0 pb-2">
            <div class="table-responsive p-0">
                <table class="table align-items-center justify-content-center mb-0 data-table  text-secondary text-xs " id="example">
                    <thead>
                    <tr>
            <th width="3%">No</th>
            <th width="7%">@lang('site.username')</th>
            <th width="10%">@lang('site.phone')</th>
            <th width="10%">@lang('site.address')</th>
            <th width="10%">@lang('site.order_status')</th>
            <th width="10%">@lang('site.ttl_price')</th>
            <th width="10%">@lang('site.ttl_qut')</th>
            <th width="20%">@lang('site.images')</th>
            <th width="20%">@lang('site.action')</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
            </div>
        </div>
</div>

@endsection

@section('script')
<script type="text/javascript">

    $(document).ready(function () {
      // $('#example').DataTable();

      var table = $('.data-table').DataTable({
        dom: 'Bfrtip',
          "lengthChange": true,
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
               buttons: [


                 {
                extend: 'print',
                text: 'Print all',
                exportOptions: {
                  columns: ':visible',
                    modifier: {
                        selected: null
                    },
                    stripHtml: false

                }
            },
            {
                extend: 'print',
                text: 'Print selected',
                exportOptions: {
                  columns: ':visible',
                  stripHtml: false

                }
            },
            'colvis'
        ],
        columnDefs: [ {
            targets: 0,
            visible: false
        } ],
               select: true,
        // dom: 'Bfrtip',
        //         buttons: [
        //             'print'
        //         ],
          processing: true,
          serverSide: true,
          ajax: "{{ route('orders.index') }}",

          columns: [
              {data: 'id', name: 'id'},
              {data: 'name', name: 'name'},
              {data: 'phone', name: 'phone'},
              {data: 'address1', name: 'address1'},
              {data: 'status', name: 'status'},
              {data: 'total_price', name: 'total_price'},
              {data: 'total_quantity', name: 'total_quantity'},
              {data: 'image', name: 'image', render: function( data, type, full, meta ) {
                // forEach((data, i) => {
                var elmt='';
                data.forEach(function(item) {
                    elmt +="<div class='col-md-6 img-col' ><img src=\"" + item + "\"   border=\"0\"  class=\"img-rounded\" align=\"center\"  height=\"100%\"width=\"100%\"/></div>";
                    // console.log(elmt);

                 });

                  // console.log(elmt);
                // });

                  return "<div class='row img-row' >" + elmt + "</div>";
              }},
              {data: 'action', name: 'action', orderable: false, searchable: false},
          ],

      });

      /* When click New customer button */
      $('#new-user').click(function () {
          $('#btn-save').val("create-user");
          $('#user').trigger("reset");
          $('#userCrudModal').html("Add New User");
          $('#crud-modal').modal('show');
      });

      /* Edit customer */
//         $('body').on('click', '#edit-user', function () {
//             var user_id = $(this).data('id');
//             $.get('users/'+user_id+'/edit', function (data) {
//                 $('#userCrudModal').html("Edit User");
//                 $('#btn-update').val("Update");
//                 $('#btn-save').prop('disabled',false);
//                 $('#crud-modal').modal('show');
//                 $('#user_id').val(data.id);
//                 $('#name').val(data.name);
//                 $('#email').val(data.email);
//
//             })
//         });
//         /* Show customer */
//         $('body').on('click', '#show-user', function () {
//             var user_id = $(this).data('id');
//             $.get('users/'+user_id, function (data) {
//
//                 $('#sname').html(data.name);
//                 $('#semail').html(data.email);
//
//             })
//             $('#userCrudModal-show').html("User Details");
//             $('#crud-modal-show').modal('show');
//         });
//
//         /* Delete customer */
//         $('body').on('click', '#delete-user', function () {
//             var user_id = $(this).data("id");
//             var token = $("meta[name='csrf-token']").attr("content");
//             confirm("Are You sure want to delete !");
//
//             $.ajax({
//                 type: "DELETE",
//                 url: "http://localhost/laravelpro/public/users/"+user_id,
//                 data: {
//                     "id": user_id,
//                     "_token": token,
//                 },
//                 success: function (data) {
//
// //$('#msg').html('Customer entry deleted successfully');
// //$("#customer_id_" + user_id).remove();
//                     table.ajax.reload();
//                 },
//                 error: function (data) {
//                     console.log('Error:', data);
//                 }
//             });
//         });

  });

</script>
@endsection
