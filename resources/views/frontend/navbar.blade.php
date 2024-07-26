<nav class="navbar navbar-expand-lg navbar-light ">
        <div class="container-fluid ">

            {{--start mobile --}}
            <ul class="navbar-nav d-xl-none d-lg-none d-sm-none">
                
                <div class="row">
                  <div class="col-4">
                    <!--Home-->
                    <li class="home-link-mobile" id="home_link">
                      <a href="{{route('home')}}" class="" >
                        <img src="{{asset('images/Sodic Logo _ nxt Gen.png')}}" />
                        {{-- /home/hatem/Downloads/Sodic Logo _ nxt Gen.png --}}
                      </a>
                    </li>
                  </div>
                  <div class="col-4" style="order: 2">
                    <!--Explore-->
                    <li class="" id="explore_link">
                      <a style="text-decoration: unset;" href="{{route('results')}}">EXPLORE</a>
                    </li>
                  </div>
                  <div class="col-4">
                    <!--Imagine-->
                    <li class="imagine-link-mobile" id="imagine_link">
                      <a  href="{{route('form')}}" class="" href="{{route('form')}}">
                        <img src="{{asset('images/imagine_link.png')}}" />
                      </a>
                    </li>
                  </div>

                </div>









            </ul>
            {{--end mobile --}}
            {{--start desktop --}}
            <ul class="navbar-nav d-none d-sm-block">
                
                
                <!--Home-->
                <li class="" id="home_link">
                                          {{-- <img src="{{asset('images/Sodic Logo _ nxt Gen.png')}}" /> --}}
                   <a href="{{route('home')}}" class="" ><p><img width="65%" src="{{asset('images/Asset.png')}}" /></p></a>
                   {{-- <a href="{{route('home')}}" class="" ><p><img width="65%" src="{{asset('images/Sodic Logo _ nxt Gen.png')}}" /></p></a> --}}
                </li>


                <!--Explore-->
                <li class="nav-item" id="explore_link">
                  <a class="nav-link" href="{{route('results')}}">EXPLORE</a>
                </li>


                <!--Imagine-->
                <li class="nav-item" id="imagine_link">
                  <a  href="{{route('form')}}" class="nav-link" href="{{route('form')}}">
                    <img width="70%" src="{{asset('images/imagine_link.png')}}" />
                  </a>
                </li>


            </ul>
            {{--end desktop --}}


            </div>
        </div>
    </nav>


