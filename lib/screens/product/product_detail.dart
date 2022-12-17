import 'package:flutter/material.dart';

import 'package:layout/layout.dart';

import '../../models/product.dart';
import 'product_detail_mob.dart';
import 'product_detail_pc.dart';

class ProductDetail extends StatelessWidget {
  final Product prodd;
  const ProductDetail({super.key, required this.prodd});

  @override
  Widget build(BuildContext context) {
    return AdaptiveBuilder(
      xs: (_) => ProductDetailMob(prod: prodd),
      sm: (_) => ProductDetailMob(prod: prodd),
      md: (_) => ProductDetailPC(prod: prodd),
      lg: (_) => ProductDetailPC(prod: prodd),
    );
  }
}
