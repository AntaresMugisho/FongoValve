<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    @livewireStyles
    <title>Tous les Communiqués</title>
</head>

<body>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">num</th>
                <th scope="col">Communiqué titre</th>
                <th scope="col">Concernés</th>
                <th scope="col">redacteur</th>
                <th scope="col">Message</th>
                <th scope="col">Actions</th>

            </tr>
        </thead>
        <tbody>

            @forelse ($communs as $commun)
                <tr>
                    <th scope="row">{{ $commun->num }}</th>
                    <td> {{ $commun->title }} </td>
                    <td> {{ $commun->concern }} </td>
                    <td> {{ $commun->admin->name }} </td>
                    <td> {{ $commun->mssg }} </td>
                    <td>
                        <a href="{{ route('updating', $commun->num) }}" class="btn btn-primary">Edit</a>
                        <form action="{{route('delete',$commun->num)}}" method="POST">
                            @method('delete')
                            @csrf
                            <input type="submit" value="Delete" name="delete" class="btn btn-danger" >
                        </form>
                    </td>
                </tr>
            @empty
                <p>Aucun Communiqué à revoir</p>
            @endforelse
        </tbody>
    </table>
    {{ $communs->links() }}
    @livewireScripts
</body>
</html>
