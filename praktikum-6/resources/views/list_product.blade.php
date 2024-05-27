@extends('layouts.list')

@section('title', 'Firman App')

@section('content')

<table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
        <tr>
            <th scope="col" class="px-6 py-3">
                ID
            </th>
            <th scope="col" class="px-6 py-3">
                Produk
            </th>
        </tr>
    </thead>
    <tbody>
        </th>
        @foreach($data as $post)
        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                {{ $post['id']}}
            </th>
            <td class="px-6 py-4">
                {{ $post['produk']}}
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

@endsection