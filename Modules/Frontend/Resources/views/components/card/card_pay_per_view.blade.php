<div class="iq-card card-hover">

    <div class="block-images position-relative w-100">

        @if(isset($is_search) && $is_search == 1)
            <a href="{{ isset($value['season_id']) ? route('episode-details', ['id' => $value['id'], 'is_search' => request()->has('search') ? 1 : null])
            : route('tvshow-details', ['id' => $value['entertainment_id'], 'is_search' => request()->has('search') ? 1 : null]) }}"
                class="top-0 bottom-0 position-absolute start-0 end-0 w-100 h-100">
            </a>
        @else
            <a href="{{ isset($value['season_id'])
            ? route('episode-details', ['id' => $value['id']])
            : route('tvshow-details', ['id' => $value['entertainment_id']]) }}"
                class="top-0 bottom-0 position-absolute start-0 end-0 w-100 h-100">
            </a>
        @endif
        <div class="image-box w-100">
            <img src="{{ $value['poster_image'] }}" alt="movie-card"
                class="object-cover border-0 img-fluid w-100 d-block">
            @if($value['access'] == 'pay-per-view')
                @if(\Modules\Entertainment\Models\Entertainment::isPurchased($value['id'], $value['type']))
                    <!-- Display "RENTED" badge if the movie is purchased -->
                    <span
                        class="top-0 gap-1 px-2 py-1 m-2 position-absolute start-0 badge bg-success d-flex align-items-center fs-6">
                        <i class="ph ph-film-reel"></i> {{ __('messages.rented') }}
                    </span>
                @else
                    <!-- Display "RENT" badge if the movie is available for rent -->
                    <span
                        class="top-0 gap-1 px-2 py-1 m-2 position-absolute start-0 badge bg-success d-flex align-items-center fs-6">
                        <i class="ph ph-film-reel"></i> {{ __('messages.rent') }}
                    </span>
                @endif
            @endif
        </div>
        <div class="card-description with-transition">
            <div class="position-relative w-100">
                {{-- <ul class="gap-5 mb-2 genres-list ps-0 d-flex align-items-center">
                    @if(isset($value['season_id']))
                    <li class="small">{{ __('movie.episode') }}</li>
                    @else
                    <li class="small">{{ __('movie.lbl_season') }}</li>
                    @endif
                </ul> --}}

                <h5 class="iq-title text-capitalize line-count-1"> {{ $value['name'] ?? '--'}} </h5>
                <p class="mb-1 line-count-2 font-size-14"> {{ $value['short_desc'] ?? ''}} </p>
                <div class="gap-1 movie-time d-flex align-items-center font-size-14">
                    <i class="ph ph-clock"></i>
                    {{ $value['duration'] ? formatDuration($value['duration']) : '--' }}
                </div>
                <div class="gap-3 d-flex align-items-center">

                </div>
                <div class="gap-3 mt-3 d-flex align-items-center font-size-14">

                    <div class="flex-grow-1">
                        <a href="{{ isset($value['season_id']) ? route('episode-details', ['id' => $value['id']]) : route('tvshow-details', ['id' => $value['entertainment_id']]) }}"
                            class="btn btn-primary w-100">
                            {{ __('frontend.watch_now') }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>