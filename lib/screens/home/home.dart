import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:layout/layout.dart';
import 'package:newproject/core/cart_controller.dart';

import 'home_mob.dart';
import 'home_pc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return AdaptiveBuilder(
      xs: (_) => const HomeMob(),
      sm: (_) => const HomeMob(),
      md: (_) => const HomePC(),
      lg: (_) => const HomePC(),
    );
  }
}
