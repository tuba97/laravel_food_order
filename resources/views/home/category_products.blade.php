@extends('layouts.home')

@section('title', 'Ürün Kategorileri '.$data->title)
@include('home._header')



@section('content')
    <div class="container">
    <div class="wrap">
        <div class="main">
            <div class="content">
                <div class="content_top">
                    <div class="heading">
                        <h3>En Yeni Ürünler</h3><br><br>
                    </div>
                    @foreach($datalist as $rs)
                        <div class="grid_1_of_4 images_1_of_4">
                            <a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}"><img src="{{ Storage::url($rs->image) }}" alt="" /></a>
                            <h2>{{$rs->title}}</h2>
                            <div class="price-details">
                                <div class="price-number">
                                    <p><span class="rupees">{{$rs->price}}₺</span></p>
                                </div>
                                @auth
                                    <form action="{{route('user_shopcart_add',['id'=>$rs->id])}}" method="post">
                                        @csrf
                                        <div class="add-cart">
                                            <input name="quantity" type="hidden" value="1">
                                            <h4><button type="submit" class="btn btn-primary">Sepete Ekle</button></h4>
                                        </div>
                                    </form>
                                @else
                                    <a href="/login">Giriş</a>
                                @endauth
                                <div class="clear"></div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    </div>

@endsection



