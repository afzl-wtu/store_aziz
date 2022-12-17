import 'package:flutter/material.dart';

import 'package:layout/layout.dart';

import 'cart_mob.dart';
import 'cart_pc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveBuilder(
      xs: (_) => const CartMob(),
      sm: (_) => const CartMob(),
      md: (_) => const CartPC(),
      lg: (_) => const CartPC(),
    );
  }
}
