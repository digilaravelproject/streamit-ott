<div class="iq-card card-hover entainment-slick-card">
    <div class="block-images position-relative w-100">

        {{-- Links Logic --}}
        @if(isset($is_search) && $is_search == 1)
            <a href="{{ $value['type'] == 'tvshow'
            ? route('tvshow-details', ['id' => $value['id'], 'is_search' => request()->has('search') ? 1 : null])
            : route('movie-details', ['id' => $value['id'], 'is_search' => request()->has('search') ? 1 : null]) }}"
                class="top-0 bottom-0 position-absolute start-0 end-0 w-100 h-100">
            </a>
        @else
            <a href="{{ $value['type'] == 'tvshow' ? route('tvshow-details', ['id' => $value['id']]) : route('movie-details', ['id' => $value['id']]) }}"
                class="top-0 bottom-0 position-absolute start-0 end-0 w-100 h-100">
            </a>
        @endif

        {{--
        CHANGE: Added style="aspect-ratio: 16/9;" to force horizontal layout.
        Added h-100 to image to fill the box.
        --}}
        <div class="image-box w-100" style="aspect-ratio: 16/9 !important;">
            <img src="{{ $value['poster_image'] }}" alt="movie-card"
                class="object-cover border-0 img-fluid w-100 h-100 d-block">

            {{-- Badges --}}
            @if($value['movie_access'] == 'pay-per-view')
                @if(\Modules\Entertainment\Models\Entertainment::isPurchased($value['id'], $value['type']))
                    <span
                        class="top-0 gap-1 px-2 py-1 m-2 position-absolute start-0 badge bg-success d-flex align-items-center fs-6">
                        <i class="ph ph-film-reel"></i> {{ __('messages.rented') }}
                    </span>
                @else
                    <span
                        class="top-0 gap-1 px-2 py-1 m-2 position-absolute start-0 badge bg-success d-flex align-items-center fs-6">
                        <i class="ph ph-film-reel"></i> {{ __('messages.rent') }}
                    </span>
                @endif
            @endif

            @if($value['movie_access'] == 'paid')
                @php
                    $current_user_plan = auth()->user() ? auth()->user()->subscriptionPackage : null;
                    $current_plan_level = $current_user_plan->level ?? 0;
                @endphp

                @if($value['plan_level'] > $current_plan_level || auth()->user() == null)
                    <button type="button" class="border-0 product-premium" data-bs-toggle="tooltip" data-bs-placement="top"
                        data-bs-title="Premium"><i class="ph ph-crown-simple"></i></button>
                @endif
            @endif
        </div>

        {{--
        Description Section:
        Isse wapas block-images ke andar rakha hai taaki 'entainment-slick-card' ka hover effect
        (jo description ko slide-up karta hai) properly kaam kare.
        --}}
        <div class="card-description with-transition">
            <div class="position-relative w-100">
                <ul class="gap-5 mb-2 genres-list ps-0 d-flex align-items-center">
                    @foreach(collect($value['genres'])->slice(0, 2) as $gener)
                        <li class="small">{{ $gener['name'] ?? $gener->resource->genre->name ?? '--' }}</li>
                    @endforeach
                </ul>

                <h5 class="iq-title text-capitalize line-count-1"> {{ $value['name'] ?? '--'}} </h5>
                <div class="gap-3 d-flex align-items-center">
                    <div class="gap-1 movie-time d-flex align-items-center font-size-14">
                        <i class="ph ph-clock"></i>
                        {{ $value['duration'] ? formatDuration($value['duration']) : '--' }}
                    </div>
                    <div class="gap-1 movie-language d-flex align-items-center font-size-14">
                        <i class="ph ph-translate"></i>
                        <small>{{ $value['language'] }}</small>
                    </div>
                </div>
                <div class="gap-3 mt-3 d-flex align-items-center">
                    <x-watchlist-button :entertainment-id="$value['id']" :in-watchlist="$value['is_watch_list']"
                        :entertainmentType="$value['type']" customClass="watch-list-btn" />

                    <div class="flex-grow-1">
                        <a href="{{ $value['type'] == 'tvshow' ? route('tvshow-details', ['id' => $value['id']]) : route('movie-details', ['id' => $value['id']]) }}"
                            class="btn btn-primary w-100">
                            {{ __('frontend.watch_now') }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>