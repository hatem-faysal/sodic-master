<div>
  <div id="columns">
    @foreach($imagines as $key => $value)
    <figure>
      <div class="image_container">
        <a href="{{ asset($value->getImage('Imagine') )}}">
        <img
          src="{{ asset($value->getImage('Imagine') )}}"
          class="w-100 shadow-1-strong rounded mb-4" 
        />
        </a>
        <div class="user_message" >
            <p class="results_p1" >{{$users->where('id',$value->user_id)->first()?$users->where('id',$value->user_id)->first()->name:' '}}</p>
            <p class="results_p2" >{{$users->where('id',$value->user_id)->first()?$users->where('id',$value->user_id)->first()->message: ' ' }}</p>
        </div>
      </div>
    </figure>
    @endforeach
  </div>
</div>
