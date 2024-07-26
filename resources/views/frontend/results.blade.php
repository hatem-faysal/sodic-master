<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- bootstrap css -->
  <link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.min.css')}}">
  </link>


  <!--custom css -->
  <link rel="stylesheet" href="{{asset('customs/style.css')}}">
  </link>



  <title>Results</title>
    @livewireStyles
    @include('frontend.particle.FacebookPixel')
</head>



<body class="body-background-image">



  <!-- nav bar -->
  @include('frontend.navbar')



  <style>
    .bad {}




    #columns {
      column-width: 320px;
      column-gap: 15px;
      width: 90%;
      max-width: 1100px;
      margin: 50px auto;
      padding-top: 30px;

    }

    div#columns figure {
      margin: 0 0px 0px;
      transition: opacity .4s ease-in-out;
      display: inline-block;
      column-break-inside: avoid;
    }

    div#columns figure img {
      width: 100%;
      height: auto;
    }

    div#columns figure figcaption {
      font-size: .9rem;
      color: #444;
      line-height: 1.5;
    }

    div#columns small {
      font-size: 1rem;
      float: right;
      text-transform: uppercase;
      color: #aaa;
    }

    div#columns small a {
      color: #666;
      text-decoration: none;
      transition: .4s color;
    }

    div#columns:hover figure:not(:hover) {
      opacity: 0.4;
    }

    @media screen and (max-width: 750px) {
      #columns {
        column-width: 120px;
        column-gap: 15px;
        width: 90%;
        max-width: 1100px;
        /* margin: 50px auto;
        margin: unset; */
        margin-top: 1rem
      }

      #columns figure {}
    }
.mb-4 {
    margin-bottom: 14px!important;
}
  </style>

@livewire('frontend.results')

  <!-- content -->




  <!-- bootstrap script -->
  <script type="text/javascript" src="{{asset('bootstrap/js/bootstrap.js')}}"></script>

</body>
@livewireScripts
<script type="text/javascript">
  window.onscroll = function(ev){
    if((window.innerHeight + window.scrollY) >= document.body.offsetHeight){
      window.livewire.emit('load-more')
    }
  }
</script>
</html>