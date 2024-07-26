<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.css')}}" >  </link>
    <!--custom_css-->
    <link rel="stylesheet" href="{{asset('customs/style.css')}}" >  </link>
    <title>HOME</title>
      @include('frontend.particle.FacebookPixel')
  </head>
  <body class="body-background">
    <!-- nav bar -->
    @include('frontend.navbar')




    <!-- content -->
    <div class="container">
        <div class="row">

            <div class="left-side left-side-padding col-lg-6 col-12">
                <!-- text img -->
                <img width="95%" src="{{asset('images/SodicImagine.png')}}" />
                <!-- btn img -->
                <a href="{{route('form')}}">
                    <img style="margin-top:25px"width="55%" src="{{asset('images/home_button.png')}}" />
                </a>
            </div>

            <div class="images images-home col-lg-6 col-12 d-xl-none d-lg-none d-sm-none" style="text-align:right;padding-top:30px">
                <img class="img-logo-one">
                <img class="img-logo-two">
                <img class="img-logo-three">
            </div>
            <div class="images images-home col-lg-6 col-12 d-none d-sm-block" style="text-align:right;padding-top:30px">
                <img  style="margin-right:10px"  src= "{{asset('images/home1.png')}}" >
                <img  style="margin-right:10px"  src= "{{asset('images/home2.png')}}">
                <img style="margin-right:10px"  src= "{{asset('images/home3.png')}}">
            </div>


        </div>
    </div>


    



    <!-- bootstrap script -->
    <script src="{{asset('bootstrap/js/bootstrap.js')}}" type='text/javascript'>  </script>
  </body>
</html>