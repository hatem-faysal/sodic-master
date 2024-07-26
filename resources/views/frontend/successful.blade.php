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
  <body class="body-background-successful">



        <!-- nav bar -->
        @include('frontend.navbar')

        
        <!--content-->
        <div class="thank-you-content">
            <div style="width:fit-content;margin:auto;text-align:center;margin-top: 4rem;">
                <a href="{{route('results')}}">
                {{-- old --}}
                    {{-- <img class="img-original d-none d-sm-block" width="100%" style="margin: auto;" src="{{asset('images/thank you/Text Only - Desktop.png')}}" /> --}}
                    {{-- <img class="img-original-mobile d-xl-none d-lg-none d-sm-none" style="width:100%;margin-top: 5rem;" src="{{asset('images/thank you/Text Only - Mobile Version.png')}}" /> --}}
                {{-- new --}}
                    <img class="img-original d-none d-sm-block" width="100%" style="margin: auto;margin-top: 10rem;" src="{{asset('images/16dash_amended-thank-you-page-png_2023-08-02_1320/amended thank you - Mobile.png')}}" />
                    <img class="img-original-mobile d-xl-none d-lg-none d-sm-none" style="width:92%;margin-top: 7rem;" src="{{asset('images/16dash_amended-thank-you-page-png_2023-08-02_1320/Text Only - Desktop.png')}}" />
                </a>
            </div>
            <br>
            <div style="width:fit-content;margin:auto;text-align:center">
                <a href="{{route('results')}}">
                    {{-- <img class="img-original" src="{{asset('images/thank_button.png')}}" /> --}}
                </a>
            </div>
        </div>



    <!-- bootstrap script -->
    <script src="{{asset('bootstrap/js/bootstrap.js')}}" type='text/javascript'>  </script>
  </body>
</html>