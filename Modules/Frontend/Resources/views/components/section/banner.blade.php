<div class="hero-banner-wrapper position-relative">
    <div class="slick-banner main-banner" data-speed="1000" data-autoplay="false" data-center="false"
        data-infinite="true" data-navigation="false" data-pagination="true" data-spacing="0">

        @foreach ($data as $index => $slider)

            @if ($slider['data'] != null)

                @php
                    $slideData = $slider['data']->toArray(request());
                @endphp


                @if (isenablemodule($slider['type']) == 1)
                    <div class="hero-slide-item" data-index="{{ $index }}"
                        style="background-image: url({{ setBaseUrlWithFileName($slider['file_url']) }});">
                        <div class="hero-movie-content h-100">
                            <div class="container-fluid h-100">
                                <div class="row align-items-center h-100">
                                    <!-- Main Content -->
                                    <div class="col-lg-7 col-md-12">
                                        <div class="hero-movie-info" style="padding-top: 100px;">
                                            <!-- Movie Title - Large Display -->
                                            <h1 class="hero-movie-title-large mb-3">{{ $slideData['name'] }}</h1>

                                            <!-- Rating and Meta Info -->
                                            <div class="hero-movie-meta-info mb-3">
                                                <ul class="list-inline m-0 p-0 d-flex align-items-center flex-wrap gap-3">
                                                    @if (!empty($slideData['rating']))
                                                        <li>
                                                            <span class="hero-movie-rating">
                                                                <span
                                                                    class="badge bg-warning text-dark">{{ $slideData['rating'] }}</span>
                                                            </span>
                                                        </li>
                                                    @endif
                                                    @if (!empty($slideData['imdb_rating']))
                                                        <li>
                                                            <span class="d-flex align-items-center gap-2">
                                                                <i class="ph-fill ph-star text-warning"></i>
                                                                <i class="ph-fill ph-star text-warning"></i>
                                                                <i class="ph-fill ph-star text-warning"></i>
                                                                <i class="ph-fill ph-star text-warning"></i>
                                                                <i class="ph-fill ph-star text-warning"></i>
                                                            </span>
                                                        </li>
                                                    @endif
                                                    <li>
                                                        <span class="badge bg-secondary">
                                                            <i class="ph ph-film-strip"></i> IMDb
                                                        </span>
                                                    </li>
                                                    @if (!empty($slideData['duration']))
                                                        <li>
                                                            <span class="d-flex align-items-center gap-1">
                                                                <i class="ph ph-clock"></i>
                                                                <span>{{ str_replace(':', 'hr : ', $slideData['duration']) . 'min' }}</span>
                                                            </span>
                                                        </li>
                                                    @endif
                                                </ul>
                                            </div>

                                            <!-- Description -->
                                            <p class="hero-movie-description mb-4 hero-line-count-4">
                                                {!! $slideData['description'] ?? '' !!}
                                            </p>

                                            <!-- Tags/Genres -->
                                            @if (!empty($slideData['genres']))
                                                <div class="hero-movie-tags mb-3">
                                                    <span class="text-muted me-2">Tags:</span>
                                                    @foreach ($slideData['genres'] as $genre)
                                                        <span
                                                            class="badge bg-dark me-2">{{ is_array($genre) ? $genre['name'] ?? '' : $genre->name ?? '' }}</span>
                                                    @endforeach
                                                </div>
                                            @endif

                                            <!-- Additional Info -->
                                            @if (!empty($slideData['genres']))
                                                <div class="hero-movie-additional-info mb-3">
                                                    <span class="text-muted me-2">Genres:</span>
                                                    @php
                                                        $genresList = [];
                                                        foreach ($slideData['genres'] as $genre) {
                                                            $name = is_array($genre) ? $genre['name'] ?? '' : $genre->name ?? '';
                                                            if ($name) {
                                                                $genresList[] = $name;
                                                            }
                                                        }
                                                    @endphp
                                                    {{ implode(', ', $genresList) }}
                                                </div>
                                            @endif

                                            @if (isset($slideData['cast']) && !empty($slideData['cast']))
                                                <div class="hero-movie-additional-info mb-4">
                                                    <span class="text-muted me-2">Starting:</span>
                                                    @php
                                                        $castList = [];
                                                        $count = 0;
                                                        foreach ($slideData['cast'] as $castMember) {
                                                            if ($count >= 3) {
                                                                break;
                                                            }
                                                            $name = is_array($castMember) ? $castMember['name'] ?? '' : $castMember->name ?? '';
                                                            if ($name) {
                                                                $castList[] = $name;
                                                            }
                                                            $count++;
                                                        }
                                                    @endphp
                                                    {{ implode(', ', $castList) }}
                                                </div>
                                            @endif

                                            <!-- Play Button -->
                                            <div class="mt-4">
                                                <a href="{{ $slider['type'] == 'livetv' ? route('livetv-details', ['id' => $slideData['id']]) : ($slider['type'] == 'video' ? route('video-details', ['id' => $slideData['id']]) : ($slideData['type'] == 'tvshow' ? route('tvshow-details', ['id' => $slideData['id']]) : route('movie-details', ['id' => $slideData['id']]))) }}"
                                                    class="btn btn-danger btn-lg px-5 hero-play-btn">
                                                    <i class="ph-fill ph-play me-2"></i> Play Now
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Empty Column for spacing -->
                                    <div class="col-lg-5 col-md-12 d-lg-block d-none"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif

            @endif
        @endforeach
    </div>

    <!-- Side Thumbnails - Fixed Position (Vertical Stack) -->
    <div class="hero-side-thumbnails-fixed d-lg-block d-none">
        <div class="hero-side-thumbnails-wrapper">
            <div class="hero-side-thumbnails-container">
                @foreach ($data as $index => $slider)
                    @if ($slider['data'] != null)
                        @php
                            $thumbnailData = $slider['data']->toArray(request());
                        @endphp
                        @if (isenablemodule($slider['type']) == 1)
                            <div class="hero-side-thumbnail-item" data-slide-index="{{ $index }}">
                                <div class="hero-side-movie-card position-relative">
                                    <img src="{{ setBaseUrlWithFileName($slider['file_url']) }}" class="img-fluid rounded"
                                        alt="{{ $thumbnailData['name'] ?? 'Movie' }}">
                                    <div class="hero-side-movie-overlay">
                                        <h6 class="text-white mb-1">{{ $thumbnailData['name'] ?? 'Featured' }}</h6>
                                        <p class="text-white-50 small mb-0">
                                            <i class="ph ph-clock"></i>
                                            @if (!empty($thumbnailData['duration']))
                                                {{ str_replace(':', 'hr : ', $thumbnailData['duration']) . 'min' }}
                                            @endif
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @endif
                    @endif
                @endforeach
            </div>

            <!-- Navigation Arrows -->
            <div class="hero-side-nav-arrows">
                <button class="hero-side-nav-btn hero-side-nav-prev" onclick="moveHeroSideThumbnails('prev')">
                    <i class="ph ph-caret-left"></i>
                </button>
                <button class="hero-side-nav-btn hero-side-nav-next" onclick="moveHeroSideThumbnails('next')">
                    <i class="ph ph-caret-right"></i>
                </button>
            </div>
        </div>
    </div>
</div>

<style>
    /* Main Banner Wrapper - Scoped to hero section only */
    .hero-banner-wrapper {
        position: relative;
        overflow: hidden;
        min-height: 600px;
        margin-top: 80px;
        background: transparent !important;
    }

    /* Slick Item Background - Only affects slides inside hero-banner-wrapper */
    .hero-banner-wrapper .hero-slide-item {
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        min-height: 600px;
        position: relative;
    }

    .hero-banner-wrapper .hero-slide-item::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(to right, rgba(0, 0, 0, 0.95) 0%, rgba(0, 0, 0, 0.7) 50%, rgba(0, 0, 0, 0.3) 100%);
        z-index: 1;
    }

    .hero-movie-content {
        position: relative;
        z-index: 2;
    }

    /* Large Movie Title */
    .hero-movie-title-large {
        font-size: 3.5rem;
        font-weight: 700;
        color: #fff;
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.8);
        line-height: 1.2;
        max-width: 600px;
    }

    /* Movie Description */
    .hero-movie-description {
        font-size: 1rem;
        color: #ddd;
        max-width: 600px;
        line-height: 1.6;
    }

    /* Line Count Limiting */
    .hero-line-count-3 {
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    .hero-line-count-4 {
        display: -webkit-box;
        -webkit-line-clamp: 4;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    /* Meta Info Styling */
    .hero-movie-meta-info {
        font-size: 0.95rem;
        color: #ccc;
    }

    /* Play Button */
    .hero-play-btn {
        box-shadow: 0 4px 15px rgba(220, 53, 69, 0.4);
        transition: all 0.3s ease;
    }

    .hero-play-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(220, 53, 69, 0.6);
    }

    /* Side Thumbnails - Fixed Position (Right Side Vertical) */
    .hero-side-thumbnails-fixed {
        position: absolute;
        right: 30px;
        top: 50%;
        transform: translateY(-50%);
        z-index: 100;
        width: 540px;
    }

    .hero-side-thumbnails-wrapper {
        background: rgba(0, 0, 0, 0.5);
        backdrop-filter: blur(15px);
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.7);
    }

    .hero-side-thumbnails-container {
        display: flex;
        flex-direction: row;
        gap: 20px;
        margin-bottom: 20px;
        justify-content: flex-end;
    }

    .hero-side-thumbnail-item {
        display: none;
    }

    .hero-side-thumbnail-item.active-next,
    .hero-side-thumbnail-item.active-next-2 {
        display: block;
        animation: heroFadeInSlide 0.4s ease;
    }

    @keyframes heroFadeInSlide {
        from {
            opacity: 0;
            transform: translateY(20px);
        }

        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .hero-side-movie-card {
        overflow: hidden;
        border-radius: 8px;
        cursor: pointer;
        transition: all 0.3s ease;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.6);
        border: 3px solid rgba(255, 255, 255, 0.1);
        position: relative;
    }

    .hero-side-movie-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 12px 35px rgba(0, 0, 0, 0.8);
        border-color: rgba(255, 255, 255, 0.3);
    }

    .hero-side-movie-card img {
        width: 250px;
        height: 360px;
        object-fit: cover;
        display: block;
        border-radius: 12px;
    }

    .hero-side-movie-overlay {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        background: linear-gradient(to top, rgba(0, 0, 0, 0.95) 0%, rgba(0, 0, 0, 0.7) 50%, transparent 100%);
        padding: 20px 15px 15px;
    }

    .hero-side-movie-overlay h6 {
        font-size: 1rem;
        font-weight: 600;
        margin: 0 0 5px 0;
        line-height: 1.3;
    }

    .hero-side-movie-overlay p {
        font-size: 0.85rem;
        margin: 0;
    }

    /* Navigation Arrows for Side Thumbnails */
    .hero-side-nav-arrows {
        display: flex;
        gap: 15px;
        justify-content: flex-start;
        padding-top: 15px;
    }

    .hero-side-nav-btn {
        width: 35px;
        height: 35px;
        border-radius: 50%;
        background: rgba(0, 0, 0, 0.6);
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255, 255, 255, 0.3);
        color: #fff;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: all 0.3s ease;
        font-size: 16px;
    }

    .hero-side-nav-btn:hover {
        background: rgba(255, 255, 255, 0.2);
        transform: scale(1.1);
        border-color: rgba(255, 255, 255, 0.6);
    }

    .hero-side-nav-btn i {
        line-height: 1;
    }

    /* Responsive */
    @media (max-width: 1400px) {
        .hero-side-thumbnails-fixed {
            width: 480px;
            right: 20px;
        }

        .hero-side-movie-card img {
            width: 220px;
            height: 320px;
        }

        .hero-movie-title-large {
            font-size: 3rem;
        }

        .hero-movie-info {
            padding-top: 80px !important;
        }
    }

    @media (max-width: 1200px) {
        .hero-side-thumbnails-fixed {
            width: 420px;
            right: 15px;
        }

        .hero-side-movie-card img {
            width: 190px;
            height: 280px;
        }

        .hero-movie-info {
            padding-top: 60px !important;
        }
    }

    @media (max-width: 991px) {
        .hero-movie-title-large {
            font-size: 2.5rem;
        }

        .hero-movie-info {
            padding-top: 40px !important;
        }
    }

    @media (max-width: 767px) {
        .hero-movie-title-large {
            font-size: 2rem;
        }

        .hero-banner-wrapper {
            margin-top: 60px;
            min-height: 500px;
        }

        .hero-slide-item {
            min-height: 500px;
        }

        .hero-movie-info {
            padding-top: 80px !important;
        }

        .hero-movie-content {
            padding-top: 60px;
        }
    }

    @media (max-width: 576px) {
        .hero-movie-info {
            padding-top: 100px !important;
        }

        .hero-movie-content {
            padding-top: 80px;
        }

        .hero-banner-wrapper {
            min-height: 550px;
        }

        .hero-slide-item {
            min-height: 550px;
        }
    }
</style>

@push('after-scripts')
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const playButtons = document.querySelectorAll('.hero-play-btn');
            playButtons.forEach(button => {
                button.addEventListener('click', function (e) {
                    const encryptedUrl = this.getAttribute('data-encrypted-url');

                    if (encryptedUrl) {
                        e.preventDefault();
                        fetch('{{ route('decrypt.url') }}', {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json',
                                'X-CSRF-TOKEN': '{{ csrf_token() }}'
                            },
                            body: JSON.stringify({
                                encrypted_url: encryptedUrl
                            })
                        })
                            .then(response => response.json())
                            .then(data => {
                                if (data.url) {
                                    window.open(data.url, '_blank');
                                } else {
                                    alert('Error: ' + data.error);
                                }
                            })
                            .catch(error => {
                                console.error('Error:', error);
                            });
                    }
                });
            });

            // Side Thumbnails Navigation
            let currentHeroSlideIndex = 0;
            const totalHeroSlides = {{ count($data) }};

            function updateHeroSideThumbnails(currentIndex) {
                // Hide all thumbnails
                document.querySelectorAll('.hero-side-thumbnail-item').forEach(item => {
                    item.classList.remove('active-next', 'active-next-2');
                });

                // Calculate next two slides
                const nextIndex1 = (currentIndex + 1) % totalHeroSlides;
                const nextIndex2 = (currentIndex + 2) % totalHeroSlides;

                // Show next two slides
                const thumbnails = document.querySelectorAll('.hero-side-thumbnail-item');
                if (thumbnails[nextIndex1]) {
                    thumbnails[nextIndex1].classList.add('active-next');
                }
                if (thumbnails[nextIndex2]) {
                    thumbnails[nextIndex2].classList.add('active-next-2');
                }
            }

            // Initialize on page load
            updateHeroSideThumbnails(0);

            // Update when main slider changes
            $(document).ready(function () {
                if (typeof $('.slick-banner').slick === 'function') {
                    $('.slick-banner').on('afterChange', function (event, slick, currentSlide) {
                        currentHeroSlideIndex = currentSlide;
                        updateHeroSideThumbnails(currentSlide);
                    });
                }
            });

            // Make moveHeroSideThumbnails global
            window.moveHeroSideThumbnails = function (direction) {
                if (direction === 'next') {
                    currentHeroSlideIndex = (currentHeroSlideIndex + 1) % totalHeroSlides;
                } else {
                    currentHeroSlideIndex = (currentHeroSlideIndex - 1 + totalHeroSlides) % totalHeroSlides;
                }

                // Trigger main slider to move
                if (typeof $('.slick-banner').slick === 'function') {
                    $('.slick-banner').slick('slickGoTo', currentHeroSlideIndex);
                }
            };

            // Click on thumbnail to change main slide
            document.querySelectorAll('.hero-side-thumbnail-item').forEach(item => {
                item.addEventListener('click', function () {
                    const slideIndex = parseInt(this.getAttribute('data-slide-index'));
                    if (typeof $('.slick-banner').slick === 'function') {
                        $('.slick-banner').slick('slickGoTo', slideIndex);
                    }
                });
            });
        });
    </script>
@endpush