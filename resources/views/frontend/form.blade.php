<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.css')}}" />
    <script src="{{ asset('frontend/code.jquery.com_jquery-3.4.1.slim.min.js') }}" ></script>
    <script src="{{ asset('frontend/cdn.jsdelivr.net_npm_bootstrap@4.4.1_dist_js_bootstrap.min.js') }}" ></script>
    <style>
        select {
            font-family: 'Lato', 'Font Awesome 5 Free';
            font-weight: 900;
        }
        .fa-facebook-f{
        color: #3b5998; /* Set the color to Facebook's blue */
        font-size: 24px; /* Set the font size to 24 pixels */
        text-shadow: 1px 1px 1px #ccc; /* Add a subtle text shadow */
        }
    </style>
<style>
.checkmark {
  display: inline-block;
  position: relative;
  width: 18px;
  height: 18px;
  border: 1px solid #aaa;
  margin-right: 10px;
  vertical-align: middle;
}

.checkmark:after {
  content: "";
  display: block;
  position: absolute;
  top: 1px;
  left: 1px;
  width: 16px;
  height: 16px;
  background-color: #fff;
  border: 1px solid #aaa;
}

input[type="checkbox"]:checked + .checkmark:after {
  content: "\2713";
  font-size: 14px;
  color: #555;
  line-height: 16px;
  text-align: center;
  background-color: #fff;
}
</style>
<style>
.tacbox {
    display: block;
    padding: 1em;
    color: white;
    font-size: 11px;
}

input {
  height: 2em;
  width: 2em;
  vertical-align: middle;
}
/*
label {
  outline: 2px dotted #f00;
}

/*
label:after {
  content: attr(for);
}*/

</style>
    <!--custom_css-->
    <link rel="stylesheet" href="{{asset('customs/style.css')}}" />

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <link rel="stylesheet" href="{{asset('customs/CustomDropdown.css')}}" />
    <title>FORM</title>
    @include('frontend.particle.FacebookPixel')
</head>


  <body class="body-background-form">
    <!-- nav bar -->
    @include('frontend.navbar')
    <!-- content -->



    <div class="container form-data">
        <form action="{{route('store')}}" method="post">
            @csrf
            @method('post')
            <div class="row justify-content-center form-col">

                <div id="pargrafe_form" class="col-12" >
                        <img src="{{asset('images/form/Sodic - LP Mobile txt.png')}}" />
                </div>

                <div class="col-lg-3 col-12">
                    <p id="form_p_name" style="visibility: hidden;"> *REQUIRED </p>
                    <input id="form_name" required type="text" name="name" placeholder="FULL NAME">
                </div>

                <div class="col-lg-3 col-12">
                    <p id="form_p_email" style="visibility: hidden;"> *REQUIRED </p>
                    <div class="select-menu">
                        <div class="menu-btn">
                            <span ><i class="fontfont " style="color: #ffffff"></i>  <span class="btn-text" id="btn-text">Choose Platform</span></span>
                            <i class="fas fa-caret-down"></i>
                        </div>
                            <input type="text" style="opacity: 0;height: 0rem; width: 0rem;" name="socialmedia" required class="socialHandleValue" id="socialHandleValue" value="">
                        <ul class="options">
                            {{-- <li class="option">
                                <i class="fontfab fab fa-facebook-f" style="color: #ffffff"></i>
                                <span class="option-text">FACEBOOK</span>
                            </li> --}}
                            <li class="option">
                                <i class="fontfab fab fa-instagram" style="color: #ffffff"></i>
                                <span class="option-text"> INSTAGRAM</span>
                            </li>
                            <li class="option">
                                <i class="fontfab fa fa-envelope" style="color: #ffffff"></i>
                                <span class="option-text"> EMAIL</span>
                            </li>
                            {{-- <li class="option">
                                <i class="fontfab fab fa-tiktok" style="color: #ffffff"></i>
                                <span class="option-text">TIKTOK</span>
                            </li> --}}
                            {{-- <li class="option">
                                <i class="fontfab fab fa-youtube" style="color: #ffffff"></i>
                                <span class="option-text">YOUTUBE</span>
                            </li> --}}
                            {{-- <li class="option">
                                <i class="fontfab fab fa-twitter" style="color: #ffffff"></i>
                                <span class="option-text">TWITTER</span>
                            </li> --}}
                            {{-- <li class="option">
                                <i class="fontfab fab fa-github" style="color: #ffffff"></i>
                                <span class="option-text">GITHUB</span>
                            </li> --}}
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-12">
                    <p id="form_p_phone" style="visibility: hidden;"> *REQUIRED </p>
                    <input id="form_phone" type="text" name="socialhandle" required placeholder="Email/Instagram Username">
                </div>
                <div class="col-lg-3 col-12">
                    <p id="form_p_phone" class="bad-phone"> *OPTIONAL </p>
                    <input id="form_phone" type="text" name="phone" placeholder="PHONE NUMBER">
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-9 imagine_message" style="position:relative;" id="imagine_message">

                        <textarea style="position: relative" name="message" id="form_message" minlength="2" maxlength="900" class="imagine-message"  cols="30" required rows="10"></textarea>
                            <span class="imagine-text" id="imagine-text"></span>

                    <div  class="placeholder_textarea" id="placeholder_textarea">
                    {{-- <div style="position:absolute;top:22px;left:25px" class="placeholder_textarea" id="placeholder_textarea"> --}}

                        <p id="placeholder_1">HOW DO YOU IMAGINE YOURSELF</p>
                        <p id="placeholder_2">LIVING IN THE FUTURE?</p>
                        <p id="placeholder_3">e.g. /Imagine a brightly colored beach club on the shore, in the style of exotic fantasy, sea through structure, organic architecture, neon lighting, dark pink and azure lightings.</p>
                    </div>


                </div>

            <div class="row d-xl-none d-lg-none d-sm-none">
                <div class="col-lg-9">
                    <p id="last_msg"> Please add your social media handle to send back your imagination. </p>
                </div>
                <div class="col-lg-9">
                    <p id="last_msg">By submitting this description you hereby forfeit all ownership and intellectual property rights for the developed visual and its potential execution for the benefit of and in favor of SODIC, except for your right to publicly share or use such visuals.</p>
                </div>
            </div>
                <div class="col-lg-3 form-data-img">
                    {{-- <br> --}}
                    {{-- @include('frontend.particle.termandcondation')
                    <div class="tacbox">
                    <input required id="checkbox" type="checkbox" />
                    <label for="checkbox"> I agree to these <a  href="#" data-toggle="modal" data-target="#exampleModalLong">Terms and Conditions</a>.</label>
                    </div> --}}
                    <button id="sub_img" type="submit">
                        <img  id="img" src="{{asset('images/imagin_button.png')}}" />
                    </button>

                </div>



            </div>

            <div class="row d-none d-sm-block">
                <div class="col-lg-9">
                    <p id="last_msg"> Please add your social media handle to send back your imagination. </p>
                </div>
                <div class="col-lg-9">
                    <p id="last_msg">By submitting this description you hereby forfeit all ownership and intellectual property rights for the developed visual and its potential execution for the benefit of and in favor of SODIC, except for your right to publicly share or use such visuals.</p>
                </div>

            </div>
        </form>
    </div>



    <!-- bootstrap script -->
    <!--/home/sodic/public_html/public/boostrap/js/bootstrap.js-->

    <script src="{{asset('bootstrap/js/bootstrap.js')}}" type='text/javascript'> </script>
    <script src="{{asset('admin/js/Custom-Dropdown.js')}}" type='text/javascript'> </script>
    <!--jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>



    <script>
        $(document).ready(function(){
          $(".imagine_message").click(function(){
            $(".placeholder_textarea").hide();
            $(".imagine-text").html('/IMAGINE');
          });
         
        });
    </script>

</body>
</html>