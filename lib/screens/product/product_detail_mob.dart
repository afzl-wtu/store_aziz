import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/core/cart_controller.dart';
import 'package:newproject/models/cart_item.dart';

import 'package:newproject/screens/product/widgets/slider.dart';

import '../../models/product.dart';

class ProductDetailMob extends StatefulWidget {
  final Product prod;
  const ProductDetailMob({super.key, required this.prod});

  @override
  State<ProductDetailMob> createState() => _ProductDetailMobState();
}

class _ProductDetailMobState extends State<ProductDetailMob> {
  double quantity = 1;

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlider(prod: widget.prod),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.prod.title,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      "\$ ${widget.prod.price}",
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Description:",
                    style:
                        TextStyle(fontSize: 21.0, color: Colors.grey.shade700),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    constraints:
                        const BoxConstraints(maxHeight: 180, minHeight: 100),
                    child: SingleChildScrollView(
                      child: Text(widget.prod.description),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Slider(
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      quantity = value;
                      setState(() {});
                    },
                    min: 1,
                    max: 10,
                    value: quantity,
                    divisions: 10,
                    inactiveColor: Colors.white,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Total:",
                          style: TextStyle(color: Colors.grey.shade700)),
                      const Spacer(),
                      Text(
                        "${widget.prod.price} x ${quantity.toInt()} = \$ ${widget.prod.price * quantity.toInt()}",
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(
                            color: Colors.white,
                          )),
                      child: const Text("Add to Cart"),
                      onPressed: () {
                        cartController.addToCart(CartItem(
                            product: widget.prod, quantity: quantity.toInt()));
                        Get.snackbar('😎', 'successfully added.');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
