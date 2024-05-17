<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.11.1/dist/full.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div class="overflow-x-auto mx-10 my-10">
        <table class="table border border-collapse">
            <thead class="bg-blue-950 text-white">
                <tr>
                    <th class="border border-collapse">No</th>
                    <th class="border border-collapse">Nama Produk</th>
                    <th class="border border-collapse">Deskripsi Produk</th>
                    <th class="border border-collapse">Harga Produk</th>
                </tr>
            </thead>
            <tbody class="text-blue-950 bg-white">
                @foreach ($nama as $index => $item)
                <tr>
                    <td class="border border-collapse">{{$index + 1}}</td>
                    <td class="border border-collapse">{{$item}}</td>
                    <td class="border border-collapse">{{ $desc[$index]}}</td>
                    <td class="border border-collapse">{{ $harga[$index]}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>



    <script src="https://cdn.tailwindcss.com"></script>
</body>

</html>

    <!-- @foreach ($nama as $index => $item)
    Nama produk {{$index + 1}}: {{$item}} <br>
    Deskripsi produk {{$index + 1}}: {{ $desc[$index]}} <br>
    Nama produk {{$index + 1}}: {{ $harga[$index]}} <br>
    @endforeach -->