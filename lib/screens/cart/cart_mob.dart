import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:newproject/models/cart_item.dart';
import 'package:newproject/screens/checkout/checkout_mob.dart';

import '../../core/cart_controller.dart';

class CartMob extends StatelessWidget {
  const CartMob({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.grey.shade700,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "CART",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ConstrainedBox(
              constraints:
                  const BoxConstraints(maxHeight: 1000, minHeight: 500),
              child: Obx(() => ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16.0),
                    itemCount: cartController.cart.length,
                    itemBuilder: (BuildContext context, int i) {
                      return CartTileMob(item: cartController.cart[i]);
                    },
                  )),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Obx(
                    () => Text(
                      "SubTotal       ${cartController.total * 2}",
                      style: TextStyle(
                          color: Colors.grey.shade700, fontSize: 16.0),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Delivery       \$05",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Cart Subtotal     ${cartController.total == 0 ? 0 : (cartController.total + 5 * 2)}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 150,
                    child: MaterialButton(
                      disabledColor: Colors.grey.shade700,
                      height: 50.0,
                      color: Colors.blue,
                      onPressed: cartController.total == 0
                          ? null
                          : () {
                              Get.to(
                                const CheckoutMob(),
                              );
                            },
                      child: Text(
                        "Secure Checkout".toUpperCase(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartTileMob extends StatefulWidget {
  const CartTileMob({super.key, required this.item});
  final CartItem item;
  @override
  State<CartTileMob> createState() => _CartTileMobState();
}

class _CartTileMobState extends State<CartTileMob> {
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
              width: double.infinity,
              height: 100,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    widget.item.product.images[0],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.item.product.title.substring(0, 15),
                          softWrap: true,
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Text(
                              '£ ${widget.item.product.price}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.blue),
                            ),
                            const SizedBox(width: 30),
                            GestureDetector(
                              onTap: () {
                                cartController.quantityMinus(widget.item);
                                setState(() {
                                  widget.item.quantity--;
                                });
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                ' ${widget.item.quantity}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.item.quantity++;
                                });
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                              ),
                            )
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
            height: 25,
            width: 25,
            alignment: Alignment.center,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              padding: const EdgeInsets.all(0.0),
              color: Colors.blue,
              child: const Icon(
                Icons.clear,
                color: Colors.white,
              ),
              onPressed: () {
                cartController.removeFromCart(widget.item);
              },
            ),
          ),
        )
      ],
    );
  }
}
