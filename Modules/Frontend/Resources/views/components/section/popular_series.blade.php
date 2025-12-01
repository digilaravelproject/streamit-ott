@if(isset($data) && count($data) > 0)
    <div class="mb-5 popular-series-block section-spacing-bottom position-relative">

        {{-- Main Slider Container --}}
        <div class="popular-series-slider slick-general-popular-series" data-items="1" data-autoplay="false"
            data-navigation="false" data-pagination="false">

            @foreach($data as $show)
                <div class="px-0 slick-item">
                    <div class="series-card-wrapper position-relative w-100" style="background: #000;">

                        <div class="series-bg-image position-absolute w-100 h-100"
                            style="background-image: url('{{ $show['banner_image'] }}'); background-size: cover; background-position: center top;">
                        </div>

                        <div class="series-overlay position-absolute w-100 h-100"
                            style="background: linear-gradient(90deg, #000 0%, rgba(0,0,0,0.6) 50%, rgba(0,0,0,0.9) 100%);">
                        </div>

                        <div class="p-0 container-fluid position-relative h-100 z-index-1">
                            <div class="row h-100 g-0">

                                <div class="p-5 text-white col-lg-8 col-md-7 d-flex flex-column justify-content-center ps-lg-5">

                                    {{-- Top 10 Badge --}}
                                    <div class="mb-3 d-flex align-items-center">
                                        <div class="px-2 py-1 border border-warning text-warning fw-bold rounded-1 text-uppercase"
                                            style="font-size: 12px; letter-spacing: 1px;">
                                            Top 10
                                        </div>
                                        <span class="text-white ms-3 fw-bold small">#1 in Series Today</span>
                                    </div>

                                    {{-- Title --}}
                                    <h1 class="mb-3 text-white display-3 fw-bold"
                                        style="font-family: sans-serif; letter-spacing: -1px; text-shadow: 2px 2px 10px rgba(0,0,0,0.5);">
                                        {{ $show['name'] }}
                                    </h1>

                                    {{-- Description --}}
                                    <p class="mb-4 text-white-50 w-75 d-none d-lg-block"
                                        style="font-size: 1rem; line-height: 1.6; text-shadow: 1px 1px 2px rgba(0,0,0,0.8);">
                                        {{ Str::limit($show['description'], 180) }}
                                    </p>

                                    {{-- Metadata --}}
                                    <div class="gap-3 mb-4 text-white d-flex align-items-center small fw-bold">
                                        <span
                                            class="text-warning">{{ \Carbon\Carbon::parse($show['year'])->format('M Y') }}</span>
                                        <span class="text-white-50">•</span>
                                        <span>{{ count($show['seasons']) }} Seasons</span>
                                    </div>

                                    {{-- Action Area: Stream Button + Custom Arrows --}}
                                    <div class="gap-4 action-area d-flex flex-column">
                                        {{-- Stream Button --}}
                                        <div>
                                            <a href="{{ route('tvshow-details', ['id' => $show['id']]) }}"
                                                class="gap-2 px-5 btn btn-primary btn-lg fw-bold d-flex align-items-center"
                                                style="background-color: #ff5500; border: none; border-radius: 4px; width: fit-content;">
                                                Stream Now <i class="fas fa-play ms-1" style="font-size: 12px;"></i>
                                            </a>
                                        </div>

                                        {{-- Custom Arrows (DIRECT FUNCTIONALITY ADDED) --}}
                                        <div class="gap-3 slider-custom-arrows d-flex">
                                            {{-- Previous Button --}}
                                            <button type="button"
                                                onclick="$(this).closest('.popular-series-block').find('.slick-general-popular-series').slick('slickPrev')"
                                                class="p-0 btn btn-outline-light rounded-circle d-flex align-items-center justify-content-center custom-arrow-hover"
                                                style="width: 40px; height: 40px; border: 1px solid rgba(255,255,255,0.6);">
                                                <i class="ph ph-caret-left fs-5"></i>
                                            </button>

                                            {{-- Next Button --}}
                                            <button type="button"
                                                onclick="$(this).closest('.popular-series-block').find('.slick-general-popular-series').slick('slickNext')"
                                                class="p-0 btn btn-outline-light rounded-circle d-flex align-items-center justify-content-center custom-arrow-hover"
                                                style="width: 40px; height: 40px; border: 1px solid rgba(255,255,255,0.6);">
                                                <i class="ph ph-caret-right fs-5"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-5 d-none d-md-block h-100">
                                    <div class="p-4 pt-5 episodes-sidebar h-100 d-flex flex-column"
                                        style="background: rgba(10, 10, 10, 0.85); backdrop-filter: blur(5px);">
                                        <h5 class="mb-4 text-white fw-bold">All Episodes</h5>

                                        @if(isset($show['seasons']) && count($show['seasons']) > 0)
                                            <ul class="mb-3 border-0 nav nav-tabs custom-tabs" id="seasonTabs-{{ $show['id'] }}"
                                                role="tablist">
                                                @foreach($show['seasons'] as $sIndex => $season)
                                                    <li class="nav-item" role="presentation">
                                                        <button
                                                            class="nav-link bg-transparent border-0 text-white-50 px-0 me-4 pb-2 {{ $sIndex == 0 ? 'active text-white fw-bold' : '' }}"
                                                            id="tab-season-{{ $season['id'] }}" data-bs-toggle="tab"
                                                            data-bs-target="#content-season-{{ $season['id'] }}" type="button"
                                                            role="tab">
                                                            {{ $season['name'] }}
                                                        </button>
                                                    </li>
                                                @endforeach
                                            </ul>

                                            <div class="tab-content flex-grow-1 custom-scrollbar"
                                                style="overflow-y: auto; max-height: 420px; padding-right: 10px;">
                                                @foreach($show['seasons'] as $sIndex => $season)
                                                    <div class="tab-pane fade {{ $sIndex == 0 ? 'show active' : '' }}"
                                                        id="content-season-{{ $season['id'] }}" role="tabpanel">

                                                        <div class="gap-3 d-flex flex-column">
                                                            @foreach($season['episodes'] as $episode)
                                                                <a href="{{ route('episode-details', ['id' => $episode['id']]) }}"
                                                                    class="gap-3 p-2 rounded episode-card d-flex align-items-center text-decoration-none group hover-bg">
                                                                    {{-- Thumbnail --}}
                                                                    <div class="flex-shrink-0 overflow-hidden rounded episode-thumb position-relative"
                                                                        style="width: 130px; height: 74px;">
                                                                        <img src="{{ $episode['poster_image'] }}"
                                                                            class="object-cover w-100 h-100" style="object-fit: cover;"
                                                                            alt="">
                                                                        <div class="bg-opacity-50 position-absolute top-50 start-50 translate-middle bg-dark rounded-circle d-flex align-items-center justify-content-center"
                                                                            style="width: 30px; height: 30px;">
                                                                            <i class="text-white fas fa-play" style="font-size: 10px;"></i>
                                                                        </div>
                                                                    </div>
                                                                    {{-- Info --}}
                                                                    <div class="overflow-hidden episode-info">
                                                                        <h6 class="mb-1 text-white text-truncate"
                                                                            style="font-size: 0.95rem; font-weight: 600;">
                                                                            {{ $episode['name'] }}</h6>
                                                                        <div class="d-flex align-items-center text-white-50"
                                                                            style="font-size: 0.8rem;">
                                                                            <i class="far fa-clock me-1"></i> {{ $episode['duration'] }}
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                            @endforeach
                                                        </div>

                                                    </div>
                                                @endforeach
                                            </div>
                                        @endif
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
@endif

<style>
    .series-card-wrapper {
        height: 600px;
    }

    .custom-tabs .nav-link {
        position: relative;
        transition: all 0.3s;
        font-size: 0.9rem;
    }

    .custom-tabs .nav-link.active {
        color: #fff !important;
    }

    .custom-tabs .nav-link.active::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 2px;
        background-color: #ff5500;
    }

    .episode-card.hover-bg:hover {
        background-color: rgba(255, 255, 255, 0.1);
    }

    .episode-card:hover h6 {
        color: #ff5500 !important;
    }

    .custom-scrollbar::-webkit-scrollbar {
        width: 4px;
    }

    .custom-scrollbar::-webkit-scrollbar-track {
        background: rgba(255, 255, 255, 0.05);
    }

    .custom-scrollbar::-webkit-scrollbar-thumb {
        background: rgba(255, 255, 255, 0.2);
        border-radius: 2px;
    }

    .custom-arrow-hover:hover {
        background-color: white !important;
        color: black !important;
        border-color: white !important;
    }

    @media (max-width: 991px) {
        .series-card-wrapper {
            height: auto;
            min-height: 550px;
        }

        .episodes-sidebar {
            display: none !important;
        }

        .series-overlay {
            background: linear-gradient(0deg, #000 0%, rgba(0, 0, 0, 0.6) 100%) !important;
        }
    }
</style>