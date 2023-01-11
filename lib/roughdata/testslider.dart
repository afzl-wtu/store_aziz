import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 700,
            color: Colors.grey.shade800,
            // padding: EdgeInsets.all(16.0),
            child: Swiper(
              fade: 0.0,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Container(
                      height: 500,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/01-29-300x300.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0))),
                        child: ListTile(
                          subtitle: Text("awesome image caption"),
                          title: Text("Awesome image"),
                        ))
                  ],
                );
              },
              itemCount: 10,
              scale: 0.9,
              pagination: SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }
}
