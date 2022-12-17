import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:newproject/core/cart_controller.dart';

import '../screens/cart/cart_page.dart';

class BadgedCartIconButton extends StatelessWidget {
  const BadgedCartIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Obx(() => Badge(
            badgeColor: Colors.blueGrey,
            position: BadgePosition.topEnd(top: -1, end: -6),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(
              '${cartController.cart.length}',
              style: const TextStyle(color: Colors.white),
            ),
            child: IconButton(
              onPressed: () => Get.to(const CartPage()),
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                color: Colors.blueGrey,
              ),
            ),
          )),
    );
  }
}
