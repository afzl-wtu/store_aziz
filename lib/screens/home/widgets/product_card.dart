import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:store_aziz/models/product.dart';

// import '../../product/product_detail.dart';

class ProductCard extends StatelessWidget {
  final Product prod;
  const ProductCard({
    super.key,
    required this.prod,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Card(
        shadowColor: Colors.teal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 10,
        child: Column(
          children: [
            Image(
              height: 100,
              width: 100,
              image: AssetImage(prod.images.first),
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              prod.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
