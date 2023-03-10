import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:image_network/image_network.dart';

import '../../../core/cart_controller.dart';
import '../../../models/cart_item.dart';

class CartTile extends StatefulWidget {
  final CartItem cartItem;
  const CartTile({super.key, required this.cartItem});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
          ),
          width: double.infinity,
          margin: const EdgeInsets.only(right: 30.0, bottom: 10.0),
          child: Material(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    widget.cartItem.product.images[0],
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.cartItem.product.title,
                          softWrap: true,
                          maxLines: 1,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Text(
                              '£ ${widget.cartItem.product.price}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            const Spacer(flex: 1),
                            GestureDetector(
                              onTap: () {
                                cartController.removeFromCart(
                                    CartItem(product: widget.cartItem.product));
                                setState(() {
                                  widget.cartItem.quantity--;
                                });
                              },
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                '${widget.cartItem.quantity}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                cartController.addToCart(
                                    CartItem(product: widget.cartItem.product));
                                setState(() {
                                  widget.cartItem.quantity++;
                                });
                              },
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                              ),
                            ),
                            const Spacer(flex: 4),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 15,
          child: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              padding: const EdgeInsets.all(0.0),
              color: Colors.red,
              child: const Icon(
                Icons.clear,
                color: Colors.white,
              ),
              onPressed: () {
                cartController.removeFromCart(widget.cartItem);
              },
            ),
          ),
        )
      ],
    );
  }
}
