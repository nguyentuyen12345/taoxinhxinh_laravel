<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class AdminRedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next, string ...$guards): Response
    {
        $guards = empty($guards) ? [null] : $guards;

        // Kiểm tra xem admin đã đăng nhập hay chưa
        foreach ($guards as $guards) {
            if (Auth::guard('admin')->check()) {
                // Nếu admin đã đăng nhập, chuyển hướng đến trang dashboard
                return redirect()->route('admin.dashboard');
            }
        }

        // Nếu chưa đăng nhập, tiếp tục yêu cầu và giữ lại ở trang login
        return $next($request);
    }
}
