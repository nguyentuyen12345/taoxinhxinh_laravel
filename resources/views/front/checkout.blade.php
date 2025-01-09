@extends('front.layouts.app')

@section('content')
<section class="section-5 pt-3 pb-3 mb-3 bg-white">
    <div class="container">
        <div class="light-font">
            <ol class="breadcrumb primary-color mb-0">
                <li class="breadcrumb-item"><a class="white-text" href="#">Home</a></li>
                <li class="breadcrumb-item"><a class="white-text" href="#">Shop</a></li>
                <li class="breadcrumb-item">Thanh toán</li>
            </ol>
        </div>
    </div>
</section>

<section class="section-9 pt-4">
    <div class="container">
        <form id="orderForm" name="orderForm" action="" method="post">
            <div class="row">
                <div class="col-md-8">
                    <div class="sub-title">
                        <h2>Địa chỉ giao hàng</h2>
                    </div>
                    <div class="card shadow-lg border-0">
                        <div class="card-body checkout-form">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Tên" value="{{ (!empty($customerAddress)) ? $customerAddress->first_name : '' }}">
                                        <p></p>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Họ Tên" value="{{ (!empty($customerAddress)) ? $customerAddress->last_name : '' }}">
                                        <p></p>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <input type="text" name="email" id="email" class="form-control" placeholder="Email" value="{{ (!empty($customerAddress)) ? $customerAddress->email : '' }}">
                                        <p></p>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <textarea name="address" id="address" cols="30" rows="3" placeholder="Địa chỉ" class="form-control">{{ (!empty($customerAddress)) ? $customerAddress->address : '' }}</textarea>
                                        <p></p>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <input type="text" name="mobile" id="mobile" class="form-control" placeholder="Điện thoại" value="{{ (!empty($customerAddress)) ? $customerAddress->mobile : '' }}">
                                        <p></p>
                                    </div>
                                </div>


                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <textarea name="order_notes" id="order_notes" cols="30" rows="2" placeholder="Ghi chú" class="form-control">{{ (!empty($customerAddress)) ? $customerAddress->notes : '' }}</textarea>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="sub-title">
                        <h2>Đơn hàng</h3>
                    </div>
                    <div class="card cart-summery">
                        <div class="card-body">

                            @foreach (Cart::content() as $item)
                            <div class="d-flex justify-content-between pb-2">
                                <div class="h6">{{ $item->name }} X {{ $item->qty }}</div>
                                <div class="h6">${{ $item->price*$item->qty }}</div>
                            </div>
                            @endforeach

                            {{-- <div class="d-flex justify-content-between summery-end">
                                <div class="h6"><strong>Tổng cộng</strong></div>
                                <div class="h6"><strong>${{ Cart::subtotal() }}</strong></div>
                            </div> --}}

                            {{-- <div class="d-flex justify-content-between summery-end">
                                <div class="h6"><strong>Giảm giá</strong></div>
                                <div class="h6"><strong id="discount_value">${{ $discount }}</strong></div>
                            </div> --}}

                            {{-- <div class="d-flex justify-content-between mt-2">
                                <div class="h6"><strong>Vận chuyển</strong></div>
                                <div class="h6"><strong id="shippingAmount">${{ number_format($totalShippingCharge,2) }}</strong></div>
                            </div> --}}
                            <div class="d-flex justify-content-between mt-2 summery-end">
                                <div class="h5"><strong>Tổng cộng</strong></div>
                                <div class="h5"><strong id="grandTotal">${{ number_format($grandTotal,2) }}</strong></div>
                            </div>
                        </div>
                    </div>

                    <div id="discount-response-wrapper">
                        @if (Session::has('code'))
                        <div class=" mt-4" id="discount-response">
                            <strong>{{ Session::get('code')->code }}</strong>
                            <a class="btn btn-sm btn-danger" id="remove-discount"><i class="fa fa-times"></i></a>
                        </div>
                        @endif
                    </div>

                    <div class="card payment-form ">

                        <h3 class="card-title h5 mb-3">Phương thức thanh toán</h3>
                        <div class="">
                            <input checked type="radio" name="payment_method" value="cod" id="payment_method_one">
                            <label for="payment_method_one" class="form-check-label">Thanh toán khi nhận hàng</label>
                        </div>
                        <div class="pt-4">
                            @csrf
                            <button type="submit" class="btn-dark btn btn-block w-100">Thanh toán ngay</button>
                        </div>
                       {{-- <form action="{{ route('front.processCheckout') }}" method="POST">
                        @csrf
                        <button type="submit" class="btn-dark btn btn-block w-100">Thanh toán ngay</button>
                    </form> --}}
                    </div>


                    <!-- CREDIT CARD FORM ENDS HERE -->

                </div>
            </div>
        </form>
    </div>
</section>
@endsection

@section('customJs')
    <script>
        $("#payment_method_one").click(function(){
            if ($(this).is(":checked") == true) {
                $("#card-payment-form").addClass('d-none');
            }
        });

        $("#payment_method_two").click(function(){
            if ($(this).is(":checked") == true) {
                $("#card-payment-form").removeClass('d-none');
            }
        });

        $("#orderForm").submit(function(event){
            event.preventDefault();

            $('button[type="submit"]').prop('disabled',true);

            $.ajax({
                url: '{{ route("front.processCheckout") }}',
                type: 'post',
                data: $(this).serializeArray(),
                dataType: 'json',
                success: function(response){
                    var errors = response.errors;
                    $('button[type="submit"]').prop('disabled',false);

                    if(response.status == false) {
                        if (errors.first_name) {
                            $("#first_name").addClass('is-invalid')
                                .siblings("p")
                                .addClass('invalid-feedback')
                                .html(errors.first_name);
                        } else {
                            $("#first_name").removeClass('is-invalid')
                                .siblings("p")
                                .removeClass('invalid-feedback')
                                .html('');
                        }

                        if (errors.last_name) {
                            $("#last_name").addClass('is-invalid')
                                .siblings("p")
                                .addClass('invalid-feedback')
                                .html(errors.last_name);
                        } else {
                            $("#last_name").removeClass('is-invalid')
                                .siblings("p")
                                .removeClass('invalid-feedback')
                                .html('');
                        }


                        if (errors.email) {
                            $("#email").addClass('is-invalid')
                                .siblings("p")
                                .addClass('invalid-feedback')
                                .html(errors.email);
                        } else {
                            $("#email").removeClass('is-invalid')
                                .siblings("p")
                                .removeClass('invalid-feedback')
                                .html('');
                        }

                        if (errors.address) {
                            $("#address").addClass('is-invalid')
                                .siblings("p")
                                .addClass('invalid-feedback')
                                .html(errors.address);
                        } else {
                            $("#address").removeClass('is-invalid')
                                .siblings("p")
                                .removeClass('invalid-feedback')
                                .html('');
                        }


                        if (errors.mobile) {
                            $("#mobile").addClass('is-invalid')
                                .siblings("p")
                                .addClass('invalid-feedback')
                                .html(errors.mobile);
                        } else {
                            $("#mobile").removeClass('is-invalid')
                                .siblings("p")
                                .removeClass('invalid-feedback')
                                .html('');
                        }
                    } else {
                        window.location.href="{{ url('/thanks/') }}/"+response.orderId;
                    }


                }
            });
        });

    </script>
@endsection
