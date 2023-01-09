import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CCarouselSlider extends StatelessWidget {
  const CCarouselSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset('asset/images/electronics.jpeg'),
        Image.asset('asset/images/iphones.jpeg'),
        Image.asset('asset/images/mobiles.jpeg'),
        Image.network(
          'https://pimcore.cdnsbg.com/tmp/image-thumbnails/10000/15612/thumb__carousel-img/smartbuyglasses-deals-top-banner-5-.png',
          fit: BoxFit.fill,
        ),
        Image.network(
          'https://cdn.shopify.com/s/files/1/0070/7032/files/discount-hero.jpg?v=1493781512',
          fit: BoxFit.fill,
        ),
      ],
      options: CarouselOptions(
          viewportFraction: 1, autoPlay: true, enlargeCenterPage: false),
    );
  }
}
