@php
    $dataArray = is_array($data) ? $data : $data->toArray(request());
    // Unique Class name taaki sirf yahi slider target ho
    $uniqueClass = 'hero-sync-' . uniqid();
@endphp

{{-- 1. Styles specifically for this component --}}
<style>
    /* Wrapper */
    .hero-wrapper-box {
        position: relative;
        width: 100%;
        height: 550px;
        background: #000;
        border-radius: 8px;
        overflow: hidden;
        margin-bottom: 30px;
        display: block;
        /* Ensure visibility */
    }

    /* Background Slider */
    .hero-bg-slider {
        position: absolute !important;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
    }

    .hero-bg-item {
        width: 100%;
        height: 550px;
        background-size: cover;
        background-position: center;
        position: relative;
        outline: none;
    }

    /* Overlay Gradient */
    .hero-gradient-overlay {
        position: absolute;
        inset: 0;
        background: radial-gradient(circle at 20% 50%, rgba(0, 0, 0, 0.95) 0%, rgba(0, 0, 0, 0.5) 50%, rgba(0, 0, 0, 0.1) 100%);
        z-index: 2;
        pointer-events: none;
        /* Click pass karne ke liye zaroori hai */
    }

    /* Content */
    .hero-text-content {
        position: absolute;
        top: 50%;
        left: 260px;
        /* Thumbs width ke baad */
        transform: translateY(-50%);
        z-index: 10;
        max-width: 500px;
        color: white;
        padding: 20px;
        pointer-events: auto;
    }

    .hero-big-title {
        font-size: 3rem;
        font-weight: 800;
        line-height: 1.1;
        margin-bottom: 15px;
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.8);
    }

    .hero-btn-play {
        background: #e50914;
        color: #fff;
        padding: 10px 25px;
        border-radius: 4px;
        text-decoration: none;
        font-weight: bold;
        display: inline-block;
        margin-top: 15px;
        transition: 0.3s;
    }

    .hero-btn-play:hover {
        background: #b20710;
        color: #fff;
    }

    /* Thumbnails (Left Side) */
    .hero-thumbs-container {
        position: absolute;
        top: 50%;
        left: 30px;
        transform: translateY(-50%);
        width: 200px;
        height: 420px;
        z-index: 20;
    }

    .hero-thumb-card {
        margin: 10px 0;
        cursor: pointer;
        opacity: 0.5;
        transition: 0.3s;
        outline: none;
    }

    .hero-thumb-card img {
        width: 100%;
        height: 110px;
        object-fit: cover;
        border-radius: 6px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.6);
        border: 2px solid transparent;
    }

    /* Active State */
    .slick-current .hero-thumb-card {
        opacity: 1;
        transform: scale(1.05);
    }

    .slick-current .hero-thumb-card img {
        border-color: #fff;
    }

    /* Arrows */
    .hero-arrow {
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        width: 32px;
        height: 32px;
        background: rgba(0, 0, 0, 0.6);
        color: #fff;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        z-index: 30;
        border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .hero-arrow:hover {
        background: #e50914;
        border-color: #e50914;
    }

    .hero-prev {
        top: -40px;
    }

    .hero-next {
        bottom: -40px;
    }

    /* Mobile */
    @media(max-width: 991px) {
        .hero-wrapper-box {
            height: auto;
            display: flex;
            flex-direction: column-reverse;
        }

        .hero-bg-slider,
        .hero-bg-item {
            position: relative;
            height: 300px;
        }

        .hero-thumbs-container {
            display: none;
        }

        .hero-text-content {
            position: relative;
            left: 0;
            top: 0;
            transform: none;
            width: 100%;
            max-width: 100%;
            background: #111;
        }
    }
</style>

<div class="streamit-block">
    <div class="hero-wrapper-box">

        {{-- Main Background Slider --}}
        {{-- Note: Maine 'slick-general-popular-movie' class HATA di hai taaki conflict na ho --}}
        <div class="hero-bg-slider hero-sync-main">
            @foreach($dataArray as $value)
                <div class="hero-bg-item" style="background-image: url('{{ $value['poster_image'] }}');">
                    <div class="hero-gradient-overlay"></div>
                    <div class="hero-text-content">
                        <h1 class="hero-big-title">{{ $value['name'] }}</h1>

                        <div class="gap-3 mb-3 d-flex text-white-50 font-size-14">
                            <span class="bg-white badge text-dark">HD</span>
                            <span>{{ collect($value['genres'])->pluck('name')->first() }}</span>
                            <span>{{ $value['duration'] ? formatDuration($value['duration']) : '2h 10m' }}</span>
                        </div>

                        <p class="d-none d-md-block" style="color:#ccc;">
                            {!! Str::limit($value['description'] ?? '', 120) !!}
                        </p>

                        <a href="{{ $value['type'] == 'tvshow' ? route('tvshow-details', $value['id']) : route('movie-details', $value['id']) }}"
                            class="hero-btn-play">
                            <i class="ph ph-play-fill"></i> Play Now
                        </a>
                    </div>
                </div>
            @endforeach
        </div>

        {{-- Vertical Thumbnails --}}
        <div class="hero-thumbs-container">
            <div class="hero-arrow hero-prev sync-up-btn"><i class="ph ph-caret-up"></i></div>

            <div class="hero-thumbs-slider hero-sync-thumbs">
                @foreach($dataArray as $value)
                    <div class="hero-thumb-card">
                        <img src="{{ $value['poster_image'] }}" alt="thumb">
                    </div>
                @endforeach
            </div>

            <div class="hero-arrow hero-next sync-down-btn"><i class="ph ph-caret-down"></i></div>
        </div>

    </div>
</div>