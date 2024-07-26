@extends('frontend.layouts.master')

@section('titlefrontend')
{{ str_replace("-"," ",ucfirst(TranslationHelper::translate('frontend'))) }}
@endsection

@section('cssfrontend')
<style>
    .wpb_single_image.vc_align_center {
        margin-top: 4rem;
    }
</style>
@endsection

@section('contentfrontend')

<div class="global-wrap container-fluid">
    <div class="row">

        <section class="s_step">
            <div class="container">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="item_step">
                        <ol class="list-inline text-center step-indicator">
                            <li class="complete">
                                <div class="step">الاسئلة</div>
                            </li>
                            <li class="complete ">
                                <div class="step">المواعيد</div>
                            </li>
                            <li class="complete">
                                <div class="step">بياناتك</div>
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </section>
        <section class="login">
            <div class="container">
                <div class="col-md-10 col-md-offset-1">

                    <!-- form -->
                    <div class="col-md-5">
                        <form action="{{route('survey.store')}}" method="POST">
                            @csrf
                            @method('POST')
                            <div class="item_login">
                                <h2 style="font-size:20px;">قم بالتسجيل مجانا بإدخال بياناتك وأحصل على</h2>
                                <h4 style="font-size:18px">1. خط سير رحلتك المثالى.</h4>
                                <h4 style="font-size:18px;">2. أفضل العروض المناسبة لأحتياجاتك.</h4>
                                <h4 style="font-size:18px;">3. خدمة 24 ساعة طوال مدة رحلتك مجانا.</h4>
                                <div class="inputs">
                                    <div class="input_name">
                                        <input required type="text" name="user_name" class="" id="user_name" placeholder="الاسم">
                                        <p class="error_msg" id="user_name_msg">
                                        </p>
                                    </div>
                                    <div class="input_email">
                                        <input required type="email" name="user_email" id="user_email"
                                            placeholder="البريد الالكتروني ">
                                        <p class="error_msg" id="user_email_msg">
                                        </p>
                                    </div>

                                    <div class="input_phone"> <input required type="text" name="user_phone" id="user_phone"
                                            placeholder="رقم الهاتف (مع مفتاح الدولة)">
                                        <p class="error_msg" id="user_phone_msg">
                                        </p>
                                    </div>
                                    <div class="input_contact">
                                        <select required class="selectpicker contact_time_ans" id="communicate_way"
                                            name="communicate_way">
                                            <option value="">وسيلة الاتصال المفضلة</option>
                                            <option value="واتس اب">واتس اب</option>
                                            <option value="سكايب">سكايب</option>
                                            <option value="اتصال هاتفي">اتصال هاتفي</option>
                                        </select>
                                        <p class="error_msg" id="communicate_way_msg">
                                        </p>
                                    </div>
                                    <div class="input_contact">
                                        <select required class="selectpicker contact_time_ans" id="payment_method"
                                            name="payment_method">
                                            <option value="">وسيلة الدفع المفضلة</option>
                                            <option value="تحويل بنكي فرع قطر">تحويل بنكي فرع قطر</option>
                                            <option value="تحويل بنكي فرع امريكا">تحويل بنكي فرع امريكا</option>
                                            <option value="خدمة PayPal لبطاقة الائتمان">خدمة PayPal لبطاقة الائتمان
                                            </option>
                                            <option value="تحويل بنكي فرع النمسا">تحويل بنكي فرع النمسا</option>
                                        </select>
                                        <p class="error_msg" id="payment_method_msg">
                                        </p>
                                    </div>

                                    <div class="input_contact">
                                        <textarea rows="6" placeholder="أخبرنا عن رحلتك" id="about_yourself"
                                            name="about_yourself"></textarea>
                                        <p class="error_msg" id="about_yourself_msg">
                                        </p>
                                    </div>


                                    
                                    <!-- عدد الأشخاص المسافرين -->
                                    <div class="input_contact"> 
                                        <h4 style="font-size:15px;">عدد الأشخاص المسافرين</h4>
                                        <input style="margin-bottom:12px" required type="number" name="adults_number" id="adults_number" Placeholder="عدد الكبار">
                                        <input required type="number" name="children_number" id="children_number" Placeholder="عدد الأطفال .. أقل من 14 سنة">
                                    </div>


                                    <!-- الوقت المفضل للسفر -->
                                    <div class="input_contact"> 
                                        <h4 style="font-size:15px;">الوقت المفضل للسفر</h4>


                                        <!-- موعد محدد للسفر -->
                                        <label for="accurate_date">  موعد محدد للسفر</labe>
                                        <input required style="width:50px" type="radio" name="travel_date" id="accurate_date" value="موعد محدد للسفر">

                                        <div>
                                            <input  class="first" style="margin-bottom:10px;display:none"name="date_from" type="date" placeholder="من" > 
                                            <input  class="first" style="display:none" name="date_to" type="date" placeholder="إلى">
                                        </div>
                                    
                                        
                                        
                                        <!--  موعد تقريبي للسفر  -->
                                        <label for="near_date">  موعد تقريبي للسفر</labe>
                                        <input required style="width:50px" type="radio" name="travel_date" id="near_date" value="موعد تقريبي للسفر">

                                        <div >
                                            <input  class="second" style="margin:10px 0px;display:none" name="days_count"  type="number" placeholder="عدد الأيام"> 
                                            
                                            <select  class="second"  name="month" style="width:100%;height:50px;font-size:15px;display:none;padding-right:10px;margin-bottom:12px;"  >
                                                <option value=""> اختر الشهر</option>
                                                <option value="يناير"> يناير</option>
                                                <option value="فبراير"> فبراير</option>
                                                <option value="مارس"> مارس</option>
                                                <option value="إبريل"> إبريل</option>
                                                <option value="مايو"> مايو</option>
                                                <option value="يونيو"> يونيو</option>
                                                <option value="يوليو"> يوليو</option>
                                                <option value="أغسطس"> أغسطس</option>
                                                <option value="سبتمبر"> سبتمبر</option>
                                                <option value="أكتوبر"> أكتوبر</option>
                                                <option value="نوفمبر"> نوفمبر</option>
                                                <option value="ديسمبر"> ديسمبر</option>
                                            </select>
                                        </div>

                                    </div>


                                <div class="butns">
                                    <button id="submit_register" type="submit" >تأكيد الحجز<span class="loader" id="loader"><i
                                                class="fa fa-refresh fa-spin fa-3x fa-fw"></i></span></button>
                                    <!-- <h2>أو</h2>
                                    <h3>هل تمتلك حساب؟ <a href="http://www.travoneer.com/thank-you/ "
                                            class="forget">تسجيل الدخول</a></h3> -->
                                </div>
                            </div>
                            </div>
                        </form>
                    </div>

                    <!-- google map -->
                    <div class="col-md-7">
                        <div class="ligon2" style="width:100%">
                            <!-- GOOGLE MAPS -->
                            <style>
                                #map {
                                    height: 400px;
                                    width: 100%;
                                }
                            </style>
                            <div id="map">
                                <div id="map" style="height: 100%; width: 100%;">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d221266.97042934617!2d30.717411090551476!3d29.94215153166356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145855e126df199d%3A0x24a6cf9d2fda5678!2s6th%20of%20October%20City%2C%20Giza%20Governorate!5e0!3m2!1sen!2seg!4v1685444389703!5m2!1sen!2seg" width="507" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            </div>
                            <!-- <div style="padding:20px">
                                <h2 style="font-size:20px;">A. ميلانو</h2>
                                <h4 style="font-size:14px">من 3 إلى 4 ليالي</h4>
                                <h2 style="font-size:20px;">B. البندقية</h2>
                                <h4 style="font-size:14px">من 2 إلى 4 ليالي</h4>
                                <h2 style="font-size:20px;">C. كومو</h2>
                                <h4 style="font-size:14px">من 2 إلى 4 ليالي</h4>
                            </div> -->
                            <!-- <img class="ligon2img" src="https://www.travoneer.com/wp-content/plugins/travoneer-extend//public/icon/Layer.jpg" title="test"> -->
                            <div style="padding-right:20px; margin-top:70px">
                                <p style="font-size:16px">يمكن أيضا التواصل معنا بشكل مباشر عبر:</p>
                                <p><img
                                        src="https://www.travoneer.com/wp-content/plugins/travoneer-extend//public/icon/close-envelope.png">
                                    support@travoneer.com</p>
                                <p><img
                                        src="https://www.travoneer.com/wp-content/plugins/travoneer-extend//public/icon/phone-receiver.png">
                                    004368860231002</p>
                                <p><img
                                        src="https://www.travoneer.com/wp-content/plugins/travoneer-extend//public/icon/whatsapp.png">
                                    004368860231002</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- end row -->
</div>







<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
    $(document).ready(function(){



        //   dateAndCounter_question
        $('#accurate_date').click(function(){
            if ($('#accurate_date').is(':checked')) {
                $('.first').css('display','block');
                $('.first').prop('required',true);

                $('.second').css('display','none');
                $('.second').prop('required',false);

            }
        });

        $('#near_date').click(function(){
            if ($('#near_date').is(':checked')) {
                $('.first').css('display','none');
                $('.first').prop('required',false);

                $('.second').css('display','block');
                $('.second').prop('required',true);


            }
        });



    });
</script>




@endsection




@section('jsfrontend')


@endsection