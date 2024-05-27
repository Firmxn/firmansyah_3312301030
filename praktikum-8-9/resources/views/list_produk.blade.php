<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produk</title>
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


        <div class="mt-6 border border-collapse text-blue-950">
            <div class="bg-blue-950 text-white text-center p-4">
                <h1>Input Produk</h1>
            </div>
            <form action="{{ route('produk.simpan') }}" method="post" class="m-4 bg-white"">
                @csrf
                <table class=" table">
                <tr>
                    <td>Nama:</td>
                    <td colspan="3"><input type="text" class="form-control w-full bg-gray-200" id="nama" name="nama"></td>
                </tr>
                <tr>
                    <td>Deskripsi:</td>
                    <td colspan="3"><textarea type="text" class="form-control w-full bg-gray-200" id="deskripsi" name="deskripsi"></textarea></td>
                </tr>
                <tr>
                    <td>Harga:</td>
                    <td colspan="3"><input type="number" class="form-control w-full bg-gray-200" id="harga" name="harga"></td>
                    <td></td>
                    <td></td>
                </tr>
                </table>
                <div class="flex justify-end">
                    <button type="submit" class="btn bg-blue-950 text-white">Simpan</button>
                </div>
            </form>
        </div>
    </div>


    <script src="https://cdn.tailwindcss.com"></script>
</body>

</html>

<!-- @foreach ($nama as $index => $item)
    Nama produk {{$index + 1}}: {{$item}} <br>
    Deskripsi produk {{$index + 1}}: {{ $desc[$index]}} <br>
    Nama produk {{$index + 1}}: {{ $harga[$index]}} <br>
    @endforeach -->