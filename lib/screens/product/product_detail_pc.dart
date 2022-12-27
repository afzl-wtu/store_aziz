import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/core/cart_controller.dart';
import 'package:newproject/screens/product/widgets/slider.dart';
import 'package:newproject/widgets/footer.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

import '../../models/cart_item.dart';
import '../../models/category.dart';
import '../../models/product.dart';
import '../../widgets/baged_cart_button.dart';

class ProductDetailPC extends StatelessWidget {
  final Product prod;
  const ProductDetailPC({super.key, required this.prod});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          'Wecome To WorldWide WebSite Ltd.',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey.shade600),
        ),
        actions: const [
          BadgedCartIconButton(),
        ],
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 400, vertical: 8),
              color: Colors.blueGrey,
              height: 60,
              width: double.infinity,
              child: OutlineSearchBar(
                backgroundColor: Colors.grey.shade300,
                cursorColor: Colors.blueGrey,
                borderColor: Colors.blueGrey,
                searchButtonIconColor: Colors.blueGrey,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(100),
                  child: Card(
                      color: Colors.grey.shade300,
                      shadowColor: Colors.blueGrey,
                      elevation: 15,
                      child: ImageSlider(prod: prod)),
                )),
                SizedBox(
                  width: 600,
                  height: 800,
                  child: SideMenu(prod: prod),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Footer()
          ],
        ),
      ),
    );
  }

  TextButton barButton(Category cat) => TextButton(
        child: Text(
          cat.name.toUpperCase(),
          style: const TextStyle(
            color: Colors.blueGrey,
          ),
        ),
        onPressed: () {
          Get.back(result: cat);
        },
      );
}

class SideMenu extends StatefulWidget {
  final Product prod;
  const SideMenu({super.key, required this.prod});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  double quantity = 1;
  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.prod.title,
            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "£ ${widget.prod.price * 2}",
            style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30.0),
          const Text(
            "Description:",
            style: TextStyle(fontSize: 23.0),
          ),
          const SizedBox(height: 5.0),
          Container(
            constraints: const BoxConstraints(maxHeight: 250, minHeight: 80),
            child: SingleChildScrollView(
              child: Text(widget.prod.description),
            ),
          ),
          const SizedBox(height: 20.0),
          Slider(
            activeColor: Colors.blueGrey,
            onChanged: (value) {
              quantity = value;
              setState(() {});
            },
            min: 1,
            max: 10,
            value: quantity,
            divisions: 10,
            inactiveColor: Colors.grey.shade300,
          ),
          Row(
            children: <Widget>[
              Text("Total:", style: TextStyle(color: Colors.grey.shade700)),
              const Spacer(),
              Text(
                "${widget.prod.price * 2} x ${quantity.toInt()} = \$ ${widget.prod.price * 2 * quantity.toInt()}",
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: Colors.blueGrey,
                      textStyle: const TextStyle(
                        color: Colors.white,
                      )),
                  child: const Text("Add to Cart"),
                  onPressed: () {
                    cartController.addToCart(
                      CartItem(
                        product: widget.prod,
                        quantity: quantity.toInt(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
