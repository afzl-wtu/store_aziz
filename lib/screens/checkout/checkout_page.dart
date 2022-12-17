import 'package:flutter/material.dart';

import 'package:layout/layout.dart';
import 'package:newproject/screens/checkout/checkout_mob.dart';
import 'package:newproject/screens/checkout/checkout_pc.dart';

class CeckOutPage extends StatelessWidget {
  const CeckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveBuilder(
      xs: (_) => const CheckoutMob(),
      sm: (_) => const CheckoutMob(),
      md: (_) => const CheckoutPc(),
      lg: (_) => const CheckoutPc(),
    );
  }
}
