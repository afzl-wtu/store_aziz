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
        Image.asset('assets/images/electronics.jpeg'),
        Image.asset('assets/images/iphones.jpeg'),
        Image.asset('assets/images/mobiles.jpeg'),
        Image.asset(
          'assets/images/smartbuyglasses-deals-top-banner-5-.png',
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/images/discount-hero.jpg',
          fit: BoxFit.fill,
        ),
      ],
      options: CarouselOptions(
          viewportFraction: 1, autoPlay: true, enlargeCenterPage: false),
    );
  }
}
