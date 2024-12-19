<aside class="main-sidebar sidebar-dark-primary elevation-4" style="background: linear-gradient(to bottom, #f8f9fa, #e9ecef);">
  <!-- Brand Logo -->
  <a href="#" class="brand-link" style="text-align: center;">
    <img src="{{ asset('admin-assets/img/AdminLTELogo.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text" style="color: #1d3557; font-family: Arial, sans-serif; font-size: 20px; font-weight: bold; letter-spacing: 1px; text-transform: uppercase;">Shop Táo Xinh</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
          <a href="dashboard.html" class="nav-link" style="color: #1f1f20;">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p style="font-weight: bold;">Trang quản trị</p>
          </a>
        </li>

        <li class="nav-item">
          <a href="{{ route('categories.index') }}" class="nav-link" style="color: #1f1f20;">
            <i class="nav-icon fas fa-file-alt"></i>
            <p style="font-weight: bold;">Danh mục sản phẩm</p>
          </a>
        </li>

        <li class="nav-item">
          <a href="{{ route('products.index') }}" class="nav-link" style="color: #1f1f20;">
            <i class="nav-icon fas fa-tag"></i>
            <p style="font-weight: bold;">Sản phẩm</p>
          </a>
        </li>

        <li class="nav-item">
          <a href="#" class="nav-link" style="color: #1f1f20;">
            <i class="fas fa-truck nav-icon"></i>
            <p style="font-weight: bold;">Vận chuyển</p>
          </a>
        </li>

        <li class="nav-item">
          <a href="orders.html" class="nav-link" style="color: #1f1f20;">
            <i class="nav-icon fas fa-shopping-bag"></i>
            <p style="font-weight: bold;">Đơn hàng</p>
          </a>
        </li>

        <li class="nav-item">
          <a href="discount.html" class="nav-link" style="color: #1f1f20;">
            <i class="nav-icon fa fa-percent" aria-hidden="true"></i>
            <p style="font-weight: bold;">Giảm giá</p>
          </a>
        </li>

        <li class="nav-item">
          <a href="users.html" class="nav-link" style="color: #1f1f20;">
            <i class="nav-icon fas fa-users"></i>
            <p style="font-weight: bold;">Người dùng</p>
          </a>
        </li>
      </ul>
    </nav>
  </div>
</aside>
