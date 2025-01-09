@extends('admin.layouts.app')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Dashboard</h1>
            </div>
        </div>
    </div>
</section>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- Tổng đơn hàng -->
            <div class="col-lg-4 col-6">
                <div class="small-box card text-white" style="background-color: #ff6f61;">
                    <div class="inner">
                        <h3>{{ $totalOrders }}</h3>
                        <p>Tổng đơn hàng</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="{{ route('orders.index') }}" class="small-box-footer text-white">Thông tin thêm <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <!-- Tổng sản phẩm -->
            <div class="col-lg-4 col-6">
                <div class="small-box card text-white" style="background-color: #4fc3f7;">
                    <div class="inner">
                        <h3>{{ $totalProducts }}</h3>
                        <p>Tổng sản phẩm</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="{{ route('products.index') }}" class="small-box-footer text-white">Thông tin thêm <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <!-- Tổng số khách hàng -->
            <div class="col-lg-4 col-6">
                <div class="small-box card text-white" style="background-color: #81c784;">
                    <div class="inner">
                        <h3>{{ $totalCustomers }}</h3>
                        <p>Tổng số khách hàng</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person"></i>
                    </div>
                    <a href="{{ route('users.index') }}" class="small-box-footer text-white">Thông tin thêm <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <!-- Tổng doanh số bán hàng -->
            <div class="col-lg-4 col-6">
                <div class="small-box card text-white" style="background-color: #ffca28;">
                    <div class="inner">
                        <h3>{{ number_format($totalRevenue, 0, ',', '.') }}₫</h3>
                        <p>Tổng doanh số bán hàng</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-cash"></i>
                    </div>
                    <a href="javascript:void(0);" class="small-box-footer text-white">&nbsp;</a>
                </div>
            </div>

            <!-- Doanh thu tháng này -->
            <div class="col-lg-4 col-6">
                <div class="small-box card text-white" style="background-color: #ab47bc;">
                    <div class="inner">
                        <h3>{{ number_format($revenueThisMonth, 0, ',', '.') }}₫</h3>
                        <p>Doanh thu tháng này</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-calendar"></i>
                    </div>
                    <a href="javascript:void(0);" class="small-box-footer text-white">&nbsp;</a>
                </div>
            </div>
        </div>

        <!-- Biểu đồ tròn -->
        <div class="row mt-4">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Biểu đồ phân bổ doanh thu</h3>
                    </div>
                    <div class="card-body">
                        <canvas id="revenueChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <style>#revenueChart {
    max-width: 2000px;
    max-height: 2000px;
    margin: 0 auto; /* Căn giữa biểu đồ */
}
</style>
    </div>
</section>
@endsection

@section('customJs')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const ctx = document.getElementById('revenueChart').getContext('2d');
        new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6'],
                datasets: [{
                    label: 'Doanh thu',
                    data: [12000000, 15000000, 10000000, 18000000, 20000000, 25000000],
                    backgroundColor: [
                        '#FF6384',
                        '#36A2EB',
                        '#FFCE56',
                        '#4BC0C0',
                        '#9966FF',
                        '#FF9F40'
                    ],
                    hoverOffset: 4
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top'
                    },
                    tooltip: {
                        callbacks: {
                            label: function(context) {
                                let label = context.label || '';
                                let value = context.raw || 0;
                                return `${label}: ${value.toLocaleString()}₫`;
                            }
                        }
                    }
                }
            }
        });
    });
</script>
@endsection
