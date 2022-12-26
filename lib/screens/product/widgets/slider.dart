import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/product.dart';
// import 'package:image_network/image_network.dart';

class ImageSlider extends StatelessWidget {
  final Product prod;
  ImageSlider({
    Key? key,
    required this.prod,
  }) : super(key: key);

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            aspectRatio: 1,
            autoPlay: false,
            viewportFraction: 1,
          ),
          items: prod.images
              .map((e) => Image.network(
                    // height: 500,
                    // width: 500,
                    // fullScreen: true,
                    // image:
                    e,
                    // fitWeb: BoxFitWeb.fill,
                  ))
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: IconButton(
                  onPressed: () => _carouselController.previousPage(),
                  icon: Text(
                    '<',
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: IconButton(
                  onPressed: () => _carouselController.nextPage(),
                  icon: Text(
                    '>',
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        )
      ],
    );
  }
}
