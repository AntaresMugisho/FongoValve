<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Créer un communiqué</title>
</head>

<body>
    <div>
        <h1>
            Créer un communiqué
        </h1>
        <form action="{{ route('create') }}" method="post" enctype="multipart/form-data">
            @csrf
            <div>
                <label for="num">Communiqué no : </label><br>
                <input type="number" name="num" id="num" value="{{ old('num') }}"> <br>
                @error('num')
                    <p style="color: red">
                        {{ $message }}
                    </p>
                @enderror
            </div>
            <div>
                <label for="concern">Ce communiqué concerne : </label> <br>
                <select name="concern" id="concern">
                    <option value="Chef de département">Chef de département</option>
                    <option value="étudiants">étudiants</option>
                    <option value="professeurs">professeurs</option>
                    <option value="conseil des étudiants">conseil des étudiants</option>
                </select> <br>
                @error('concern')
                    <p style="color: red">
                        {{ $message }}
                    </p>
                @enderror
            </div>
            <div>
                <label for="title">Titrer ce communiqué</label> <br>
                <input type="text" name="title" id="title" value="{{ old('title') }}"> <br>
                @error('title')
                    <p style="color: red">
                        {{ $message }}
                    </p>
                @enderror
            </div>
            <div>
                {{-- dynamiser l'affiche par nom : fonction,mais recuperer la fonction --}}
                <label for="sign">Ce communiqué a été signé par : </label> <br> <br>
                <input type="checkbox" name="signedBy[]" value="recteur"> <span>Le recteur</span>
                <input type="checkbox" name="signedBy[]" id="recteur" value="vice recteur"> <span>Le vice
                    recteur</span>
                <input type="checkbox" name="signedBy[]" value="Sécretaire académique"> <span>Le Sécretaire
                    académique</span>
                <input type="checkbox" name="signedBy[]" value="chef de département"> <span>Le chef de
                    département</span>
                <input type="checkbox" name="signedBy[]" value="L'aumonier"> <span>L'aumonier</span> <br>
                @error('signedBy')
                    <p style="color: red">
                        {{ $message }}
                    </p>
                @enderror
            </div>

            <div>
                <label for="delai">Ce communiqué devra duréer jusqu'à : </label> <br>
                <input type="text" name="delai" id="delai" value="{{ old('delai') }}"> <br>
                @error('delai')
                    <p style="color: red">
                        {{ $message }}
                    </p>
                @enderror
            </div>
            <div>
                <label for="mssg">Message du communiqué</label> <br>
                <textarea name="mssg" id="mssg" cols="30" rows="10">
                    {{ old('mssg') ? old('mssg') : 'taper le message ici' }}
                </textarea> <br>
                @error('mssg')
                    <p style="color: red">
                        {{ $message }}
                    </p>
                @enderror
            </div>

            <div>
                <label for="file">Joindre un fichier </label> <br>
                <input type="file" name="file" id="file" value="{{ old('file') }}">
            </div>
            @error('file')
                <p style="color: red">
                    {{ $message }}
                </p>
            @enderror
            <div>
                <input type="submit" value="EVOYER" name="submit">
            </div>
        </form>
    </div>
</body>

</html>
