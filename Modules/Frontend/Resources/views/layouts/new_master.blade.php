<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" data-bs-theme="dark">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'StreamIT') }}</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.ico') }}" />

    <!-- Library / Plugin Css Build -->
    <link rel="stylesheet" href="{{ asset('assets/css/core/libs.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/vendor/font-awesome/css/all.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/vendor/iconly/css/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/vendor/animate.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/vendor/swiperSlider/swiper.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/sweetalert2/sweetalert2.min.css') }}" />

    <!-- Streamit Design System Css -->
    <link rel="stylesheet" href="{{ asset('assets/css/streamit.min974e.css?v=5.4.0') }}" />
    <link rel="stylesheet" href="{{ asset('assets/css/custom.min974e.css?v=5.4.0') }}" />
    <link rel="stylesheet" href="{{ asset('assets/css/rtl.min974e.css?v=5.4.0') }}" />

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,300&amp;display=swap"
        rel="stylesheet">

    <!-- Phosphor icons -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/phosphor-icons/Fonts/regular/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/phosphor-icons/Fonts/duotone/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/phosphor-icons/Fonts/fill/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/streamit-font/iconly.css') }}">
</head>

<body class="">
    <span class="screen-darken"></span>

    <!-- loader Start -->
    <div class="loader simple-loader">
        <div class="loader-body">
            <img src="{{ asset('assets/images/loader.gif') }}" alt="loader" class="img-fluid " width="300">
        </div>
    </div>
    <!-- loader END -->

    <main class="main-content">
        <!--Nav Start-->
        <header class="header-center-home header-default header-sticky">
            <nav class="nav navbar navbar-expand-xl navbar-light iq-navbar header-hover-menu py-xl-0">
                <div class="container-fluid navbar-inner">
                    <div class="d-flex align-items-center justify-content-between w-100 landing-header">
                        <div class="gap-3 d-flex gap-xl-0 align-items-center">
                            <div class="gap-2 d-flex align-items-center gap-md-3">
                                <div class="logo-default">
                                    <a class="navbar-brand text-primary me-0" href="{{ url('/') }}">
                                        <img class="img-fluid logo" src="{{ asset('assets/images/logo.png') }}"
                                            loading="lazy" alt="streamit" />
                                    </a>
                                </div>
                                <div class="logo-hotstar">
                                    <a class="navbar-brand text-primary me-0" href="{{ url('/') }}">
                                        <img class="img-fluid logo" src="{{ asset('assets/images/logo-hotstar.webp') }}"
                                            loading="lazy" alt="streamit" />
                                    </a>
                                </div>
                                <div class="logo-prime">
                                    <a class="navbar-brand text-primary me-0" href="{{ url('/') }}">
                                        <img class="img-fluid logo" src="{{ asset('assets/images/logo-prime.webp') }}"
                                            loading="lazy" alt="streamit" />
                                    </a>
                                </div>
                                <div class="logo-hulu">
                                    <a class="navbar-brand text-primary me-0" href="{{ url('/') }}">
                                        <img class="img-fluid logo" src="{{ asset('assets/images/logo-hulu.webp') }}"
                                            loading="lazy" alt="streamit" />
                                    </a>
                                </div>
                                <div>
                                    <a href="#" class="px-2 py-1 subscribe-btn btn btn-warning-subtle py-md-2 px-ms-3">
                                        <span class="gap-2 d-flex align-items-center text-warning">
                                            <i class="align-middle ph-fill ph-crown fs-6"></i>
                                            <span class="d-xl-block d-none">Subscribe</span>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        {{-- START MEGA MENU (COPIED EXACTLY FROM HTML) --}}
                        <nav id="navbar_main"
                            class="offcanvas mobile-offcanvas nav navbar navbar-expand-xl hover-nav horizontal-nav mega-menu-content py-xl-0 w-100">
                            <div class="container-fluid p-lg-0">
                                <div class="px-0 offcanvas-header">
                                    <div class="navbar-brand ms-3">
                                        <div class="logo-default">
                                            <a class="navbar-brand text-primary me-0" href="{{ url('/') }}">
                                                <img class="img-fluid logo" src="{{ asset('assets/images/logo.png') }}"
                                                    loading="lazy" alt="streamit" />
                                            </a>
                                        </div>
                                    </div>
                                    <button type="button" class="px-3 btn-close float-end" data-bs-dismiss="offcanvas"
                                        aria-label="Close"></button>
                                </div>
                                <ul class="navbar-nav iq-nav-menu list-unstyled" id="header-menu">
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="collapse" href="#homePages" role="button"
                                            aria-expanded="false" aria-controls="homePages">
                                            <div class="d-flex justify-content-between">
                                                <span class="item-name">Home</span>
                                                <span class="menu-icon"><i
                                                        class="align-middle ph ph-caret-down"></i></span>
                                            </div>
                                        </a>
                                        <ul class="sub-nav mega-menu-item collapse justify-content-center list-unstyled"
                                            id="homePages">
                                            <li class="nav-item">
                                                <a class="nav-link active" href="{{ url('/') }}">
                                                    <img src="{{ asset('assets/images/mega-menu/new-home.webp') }}"
                                                        alt="img" class="img-fluid d-xl-block d-none">
                                                    <span class="d-inline-block">OTT Home</span>
                                                </a>
                                            </li>
                                            {{-- Add more menu items here as needed --}}
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">
                                            <span class="item-name">Movies</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">
                                            <span class="item-name">TV Shows</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">
                                            <span class="item-name">Video</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                        {{-- END MEGA MENU --}}

                        <div class="gap-2 css_prefix-header-right d-flex align-items-center">
                            <ul
                                class="gap-3 mb-0 list-inline d-flex align-items-center gap-md-4 ps-0 justify-content-md-end justify-content-between">
                                <li class="nav-item dropdown iq-responsive-menu d-xl-block d-none">
                                    <div class="search-box">
                                        <a href="#" class="p-0 text-white nav-link" id="search-drop"
                                            data-bs-toggle="dropdown">
                                            <div class="btn-icon btn-sm rounded-pill btn-action">
                                                <span class="btn-inner"><i
                                                        class="p-0 ph ph-magnifying-glass"></i></span>
                                            </div>
                                        </a>
                                        <ul class="p-0 m-0 dropdown-menu dropdown-search iq-search-bar"
                                            style="width: 20rem;">
                                            <li class="p-0">
                                                <div class="mb-0 form-group input-group">
                                                    <input type="text" class="border-0 form-control"
                                                        placeholder="Search...">
                                                    <button type="submit" class="search-submit"><i
                                                            class="ph ph-magnifying-glass"></i></button>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="text-white nav-link shoping-cart-button" href="javascript:void(0);"
                                        data-bs-toggle="offcanvas" data-bs-target="#shoping-cart-toggle"
                                        aria-controls="shoping-cart-toggle">
                                        <i class="p-0 ph ph-bag"></i>
                                        <span class="text-white bg-primary shopping-badge">1</span>
                                    </a>
                                </li>
                                <li class="nav-item dropdown cust-itemdropdown1" id="itemdropdown1">
                                    <a class="p-0 nav-link d-flex align-items-center" href="#" id="navbarDropdown"
                                        role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <div class="st-avatar style-1">
                                            <img src="{{ asset('assets/images/user/user6.jpg') }}" alt="user"
                                                class="img-fluid rounded-circle dropdown-user-menu-image header-user-image">
                                        </div>
                                    </a>
                                    <div
                                        class="border border-gray-900 dropdown-menu dropdown-user-menu dropdown-menu-end rounded-3">
                                        <div class="user-dropdown-inner">
                                            <div class="gap-3 mb-4 rounded d-flex align-items-center">
                                                <div class="flex-shrink-0 image">
                                                    <img src="{{ asset('assets/images/user/user6.jpg') }}"
                                                        class="img-fluid rounded-3 dropdown-user-menu-image" alt="User">
                                                </div>
                                                <div class="content">
                                                    <h6 class="mb-1">Marvin McKinney</h6>
                                                </div>
                                            </div>
                                            <ul class="gap-3 p-0 m-0 d-flex flex-column list-inline">
                                                <li><a href="#"
                                                        class="gap-2 link-body-emphasis font-size-14 d-flex align-items-center"><i
                                                            class="ph ph-user"></i><span
                                                            class="fw-medium">Profile</span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <button class="text-white navbar-toggler d-block d-xl-none" type="button"
                                data-bs-toggle="offcanvas" data-bs-target="#navbar_main" aria-controls="navbar_main">
                                <i class="ph ph-list"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        {{-- SHOPPING CART OFFCANVAS --}}
        <div class="overflow-y-auto border-0 offcanvas widget-shopping-cart-content offcanvas-end offcanvas-sidebar sidebar-container on-rtl end"
            tabindex="-1" id="shoping-cart-toggle">
            <div class="offcanvas-header position-relative">
                <h5 class="offcanvas-title fw-500">Shopping cart (<span class="streamit-cart-count">1</span>)</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="product-list-content">
                    <ul class="mb-0 list-unstyled">
                        <li class="gap-3 mini-cart-item d-flex align-items-start">
                            <div class="cart-img">
                                <a href="#"><img src="{{ asset('assets/images/shop/product/01.webp') }}"
                                        class="img-fluid" width="300" height="400" alt="Bag Pack"></a>
                            </div>
                            <div class="cart-content flex-grow-1">
                                <div class="d-flex justify-content-between align-items-center">
                                    <a class="d-block" href="#">
                                        <h6 class="fw-500">Bag Pack</h6>
                                    </a>
                                    <a href="javascript:void(0)" class="delete-btn"><i
                                            class="ph ph-trash text-primary"></i></a>
                                </div>
                                <div class="product-price text-muted">
                                    <span class="woocommerce-Price-amount amount">₹11.05</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--Nav End-->

        <!-- CONTENT YIELD -->
        @yield('content')

        <!-- Mobile Footer Menu -->
        <div class="streamit-mobile-footer-menu" aria-label="Mobile Footer Navigation">
            <ul class="m-0 footer-menu list-inline d-flex align-items-center justify-content-between">
                <li class="footer-menu-item">
                    <a href="#" class="menu-link font-size-12"><i
                            class="text-center ph ph-film-reel d-block"></i>Movies</a>
                </li>
                <li class="footer-menu-item">
                    <a href="#" class="menu-link font-size-12"><i
                            class="text-center ph ph-monitor-play d-block"></i>Videos</a>
                </li>
                <li class="footer-menu-item">
                    <a href="#" class="menu- font-size-12"><i
                            class="text-center ph ph-magnifying-glass d-block"></i>Search</a>
                </li>
            </ul>
        </div>
    </main>

    <!-- Footer -->
    <footer class="footer footer-default">
        <div class="footer-top">
            <div class="container-fluid">
                <div class="row gy-4">
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-logo">
                            <div class="logo-default">
                                <a class="navbar-brand text-primary me-0" href="{{ url('/') }}">
                                    <img class="img-fluid logo" src="{{ asset('assets/images/logo.png') }}"
                                        loading="lazy" alt="streamit" />
                                </a>
                            </div>
                        </div>
                        <div>Email us: <span class="text-white">customer@streamit.com</span></div>
                        <p class="mt-0 mb-2">Helpline Number</p>
                        <a href="tel:+4805550103" class="helpline">+(480) 555-0103</a>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <h4 class="footer-link-title text-capitalize">Movies to Watch</h4>
                        <ul class="mb-0 list-unstyled footer-menu">
                            <li><a class="text-capitalize" href="#"><span>Top trending</span></a></li>
                            <li><a class="text-capitalize" href="#"><span>Recommended</span></a></li>
                            <li><a class="text-capitalize" href="#"><span>Popular</span></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <h4 class="footer-link-title text-capitalize">Quick Links</h4>
                        <ul class="mb-0 list-unstyled footer-menu">
                            <li><a class="text-capitalize" href="#"><span>contact us</span></a></li>
                            <li><a class="text-capitalize" href="#"><span>Privacy Policy</span></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <h4 class="footer-link-title text-capitalize">About company</h4>
                        <ul class="mb-0 list-unstyled footer-menu">
                            <li><a class="text-capitalize" href="#"><span>about us</span></a></li>
                            <li><a class="text-capitalize" href="#"><span>Terms and Use</span></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <h4 class="footer-link-title text-capitalize">Subscribe Newsletter</h4>
                        <div class="mailchimp mailchimp-dark">
                            <div class="input-group">
                                <input type="text" class="mb-0 form-control" placeholder="Email"
                                    aria-describedby="button-addon2">
                                <div class="iq-button">
                                    <button type="submit" class="btn btn-primary st-subscribe-btn"
                                        id="button-addon2">Subscribe</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <p class="mb-0 font-size-14">© <span class="currentYear"></span> <span
                                class="text-primary">STREAMIT.</span> All Rights Reserved.</p>
                    </div>
                    <div class="mt-5 col-md-6 mt-md-0">
                        <div class="d-flex flex-column align-items-start align-items-md-end widget-iq-download-app">
                            <h6 class="mb-3 fw-bold">Download Streamit App </h6>
                            <div>
                                <ul class="flex-wrap gap-3 p-0 m-0 d-inline-flex align-items-center list-inline">
                                    <li class="p-0 m-0"><a class="app-image" href="#"><img
                                                src="{{ asset('assets/images/footer/play-store.html') }}" loading="lazy"
                                                alt="play-store" /></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- RTL / Customizer Box -->
    <div class="rtl-box">
        <a class="btn btn-icon btn-setting" id="settingbutton" data-bs-toggle="offcanvas"
            data-bs-target="#live-customizer" role="button" aria-controls="live-customizer">
            <i class="text-white ph ph-gear-six fs-5"></i>
        </a>
        <div class="offcanvas offcanvas-end live-customizer on-rtl end" tabindex="-1" id="live-customizer">
            <div class="gap-3 offcanvas-header justify-content-between">
                <div class="d-flex align-items-center">
                    <h5 class="offcanvas-title text-dark">Live Customizer</h5>
                </div>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
            </div>
            <div class="pt-0 offcanvas-body">
                <p>Color Customizer Settings...</p>
            </div>
        </div>
    </div>

    <!-- Back to top -->
    <div id="back-to-top" class="back-to-top" style="display: none;">
        <a class="p-0 text-white border-0 btn bg-primary btn-sm position-fixed top rounded-circle" id="top" href="#top">
            <i class="ph ph-caret-up fw-bold"></i>
        </a>
    </div>

    <!-- Scripts -->
    <script src="{{ asset('assets/js/core/libs.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/sweetalert2/sweetalert2.min.js') }}" async></script>
    <script src="{{ asset('assets/js/plugins/sweet-alert.js') }}" defer></script>
    <script src="{{ asset('assets/vendor/swiperSlider/swiper.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/lodash/lodash.min.js') }}"></script>
    <script src="{{ asset('assets/js/core/external.min.js') }}"></script>
    <script src="{{ asset('assets/js/plugins/countdown.js') }}"></script>
    <script src="{{ asset('assets/js/utility.js') }}"></script>
    <script src="{{ asset('assets/js/setting.js') }}"></script>
    <script src="{{ asset('assets/js/setting-init.js') }}" defer></script>
    <script src="{{ asset('assets/js/streamit.js') }}" defer></script>
    <script src="{{ asset('assets/js/swiper.js') }}" defer></script>
    @stack('scripts')
</body>

</html>