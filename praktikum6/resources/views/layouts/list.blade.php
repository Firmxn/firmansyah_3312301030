@extends('components.sidebar')
@section('content-template')

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'My App')</title>
    @vite(['resources/css/app.css','resources/js/app.js'])
</head>

<body>

    <header>
        @include('components.header')
    </header>
    <div class="min-h-100 mb-5 ">
        <h1 class="text-xl font-bold dark:text-white ms-8 mb-4">List Produk</h1>
        <div class="container">
            <main>
                @yield('content')
            </main>
        </div>
    </div>
    <footer>
        @include('components.footer')
    </footer>

    @endsection
</body>

</html>