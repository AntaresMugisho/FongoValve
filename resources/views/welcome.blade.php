<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    @vite('resources/css/app.css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/svg-with-js.min.css"crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/regular.min.css"crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <title>Document</title>
    <style>
      html{
        font-family: Open Sans, sans-serif;
      }
      .img{
        shape-outside : margin-box;
        margin: 0 20px 0 0 ;
      }
    </style>
  </head>
  <body class="bg-bg flex items-center justify-center ">
    
    <div class="w-full flex h-screen md:px-10 gap-8 relative  " >
      <p class="hidden md:flex absolute top-0 left-0 justify-center items-center text-text bg-secondary px-4 py-2">
        TaboApp <i class="ml-2 fa-solid fa-book-open-reader font-extrabold text-5xl"></i>
      </p>
      <div class="modal opacity-0 lg:w-1/2 w-[80%] h-auto flex justify-center rounded-md items-center bg-secondary absolute top-[30%] left-9 md:left-[5rem]  lg:left-[22rem]">
            <form action="" class="felx flex-col w-full  p-10 h-auto gap-3 flex justify-center items-center">
                <h2 class="text-text text-lg">Vérifier votre adresse mail</h2>
                <p class="text-text lg:self-start">
                    Nous avons envoyé un code à six chiffres à <span class="text-accent2">oskmanagement@gmail.com</span>
                </p>
                <div class="w-full flex flex-col gap-2">
                    <label for="code" class="text-text flex">Entrer le code <span class="hidden md:block">à six chiffres</span></label>
                    <input type="text" name="code" id="code" class="outline-none border-none bg-[#80808038] rounded-md w-full text-text px-4 py-2">
                    <button type="submit" class="text-text rounded-md bg-redCrim w-full flex justify-center items-center py-2">Envoyer</button>
                </div>
                <small class="text-text">code non réçu ?</small>
            </form>
        </div>
        <div class="w-1/2 justify-center items-center hidden md:flex h-full mt-5 pr-10 border-r border-secondary">
            <div class="w-full ">
              <img src="./imgs/Reading book-amico.png" alt="reading books together" srcset=""
                  class="hidden lg:flex object-cover img w-[53%] h-[53%] bg-[#80808038] rounded-full shadow-lg p-10 float-left">
              <p class="text-text lg:text-5xl md:text-4xl">Les vrais leaders sont avant tout des vrais lecteurs<br>
                lire c'est bon, et lire ensemble c'est encore plus  mieux
              </p>
            </div>
        </div>
        <form action=""class="w-full md:w-1/2 lg:justify-center lg:items-center relative flex flex-col gap-4 px-4 pt-20 h-screen">
            <p class="absolute md:hidden top-6 left-4 p-4 rounded-md bg-secondary w-10 h-10 flex justify-center items-center ">
                <i class="fa-solid fa-x text-text text-lg "></i>
            </p>
            <p class=" px-4 py-2 rounded-md bg-redCrim text-text absolute top-6 right-4">
                <a href="#">Se connecter</a>
            </p>
            <h2 class="text-text text-4xl font-medium">S'Inscrire</h2>
            <p class="text-text text-lg">
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quibusdam labore voluptatem 
            </p>
            <div class=" w-full h-auto bg-secondary rounded-md flex flex-col">
                <div class="w-full flex flex-col gap-2 p-6 pb-0">
                    <label for="user" class="text-text text-lg">Nom d'utilisateur</label>
                    <input type="text" name="username" id="user" class=" outline-none border-none bg-[#80808038] rounded-md w-full text-text px-4 py-2">
                </div>
                <div class="w-full flex flex-col gap-2 p-6 pb-2">
                    <label for="phone" class="text-text text-lg">Téléphone/E-mail</label>
                    <input type="text" name="phone" id="phone" class=" outline-none border-none bg-[#80808038] rounded-md w-full text-text px-4 py-2">
                </div>
                <div class="w-full flex flex-col gap-2 px-6 pb-6 relative">
                  <p class="top-12 right-8 absolute"><i class="fa-solid fa-eye text-text text-base"></i></p>
                  <p class="opacity-0 top-12 right-8 absolute"><i class="fa-solid fa-eye-slash text-text text-base"></i></p>
                  <label for="phone" class="text-text text-lg">Mot de passe</label>
                  <input type="text" name="phone" id="phone" class=" outline-none border-none bg-[#80808038]  rounded-md w-full text-text px-4 py-2">
                </div>
            </div>
            <div class="w-full">
              <button class="text-text rounded-md bg-redCrim w-full flex justify-center items-center py-2" type="submit">Sign In</button>
            </div>
            <p class="text-text pb-5">
              avez-vous déjà un compte ? <a class="text-redCrim" href="#">Se connecter</a>
            </p>
        </form>
    </div>
  </body>
</html>