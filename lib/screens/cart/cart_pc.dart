import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/screens/cart/widgets/cart_tile.dart';
import 'package:newproject/screens/checkout/checkout_pc.dart';
import 'package:newproject/widgets/header.dart';

import '../../core/cart_controller.dart';
import '../../widgets/baged_cart_button.dart';

class CartPC extends StatelessWidget {
  const CartPC({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();

    return Scaffold(
      backgroundColor: Colors.white,
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
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
        actions: const [
          BadgedCartIconButton(),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(),
            ConstrainedBox(
              constraints:
                  const BoxConstraints(maxHeight: 1500, minHeight: 400),
              child: Obx(() {
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(16.0),
                  itemCount: cartController.cart.length,
                  itemBuilder: (BuildContext context, int i) {
                    return CartTile(cartItem: cartController.cart[i]);
                  },
                );
              }),
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
                    width: 300,
                    child: MaterialButton(
                      height: 50.0,
                      disabledColor: Colors.grey.shade700,
                      color: Colors.blue,
                      onPressed: cartController.total == 0
                          ? null
                          : () {
                              Get.to(
                                const CheckoutPc(),
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
