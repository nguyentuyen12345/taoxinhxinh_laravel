@extends('admin.layouts.app')

@section('content')
	@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Trang quản trị</h1>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row g-4">
            <!-- Tổng số đơn hàng -->
            <div class="col-lg-4 col-md-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="fa fa-shopping-bag fa-3x text-primary"></i>
                        </div>
                        <div>
                            <h5 class="mb-1">Tổng số đơn hàng</h5>
                            <h3 class="mb-0">150</h3>
                        </div>
                    </div>
                    <div class="card-footer bg-transparent border-0">
                        <a href="#" class="text-primary">Xem thêm <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>

            <!-- Tổng số khách hàng -->
            <div class="col-lg-4 col-md-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="fa fa-users fa-3x text-success"></i>
                        </div>
                        <div>
                            <h5 class="mb-1">Tổng số khách hàng</h5>
                            <h3 class="mb-0">50</h3>
                        </div>
                    </div>
                    <div class="card-footer bg-transparent border-0">
                        <a href="#" class="text-success">Xem thêm <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>

            <!-- Tổng lượt bán -->
            <div class="col-lg-4 col-md-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="fa fa-dollar-sign fa-3x text-warning"></i>
                        </div>
                        <div>
                            <h5 class="mb-1">Tổng lượt bán</h5>
                            <h3 class="mb-0">$1000</h3>
                        </div>
                    </div>
                    <div class="card-footer bg-transparent border-0">
                        <a href="#" class="text-warning">Xem thêm <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Biểu đồ Traffic nằm dưới cùng -->
        <div class="card mt-4">
            <div class="card-body">
                <canvas id="trafficChart" height="100"></canvas>
            </div>
        </div>
    </div>
</section>

<!-- Script tạo biểu đồ -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const ctx = document.getElementById('trafficChart').getContext('2d');
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                    label: 'Traffic Data',
                    data: [120, 90, 150, 100, 130, 180, 140, 160, 110, 130, 170, 200],
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 2,
                    fill: true,
                    tension: 0.3
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    legend: {
                        display: true,
                        position: 'top'
                    }
                }
            }
        });
    });
</script>
@endsection
			{{-- </section> --}}			<!-- /.content -->
 @endsection
                @section('cumstomJs')
                <script>
                    console.log("hello")
                </script>

                @endsection

