import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../models/cart_item.dart';
import 'widgets/cart_tile.dart';
import '../checkout/checkout_mob.dart';

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
                      return CartTile(cartItem: cartController.cart[i]);
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
                      "SubTotal       ${cartController.total}",
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
                  Obx(() => Text(
                        "Total     ${cartController.total == 0 ? 0 : (cartController.total + 5)}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      )),
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

//KHOTI nay Khapa Maria. AIthay v eK Cart Tile da Code rakhia hoya c bajae k widgets day andron CartTile nu import kray
