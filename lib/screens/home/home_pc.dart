import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';
import 'package:newproject/roughdata/hover.dart';
import 'package:newproject/widgets/footer.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

import '../../core/cart_controller.dart';
import '../../models/cart_item.dart';
import '../../models/category.dart';
import '../../models/product.dart';
import '../../widgets/baged_cart_button.dart';
import '../cart/cart_page.dart';
import '../product/product_detail.dart';

class HomePC extends StatefulWidget {
  const HomePC({super.key});

  @override
  State<HomePC> createState() => _HomePCState();
}

class _HomePCState extends State<HomePC> {
  Category hrm = Category.all;
  List<Widget> sliderImages() {
    Set<String> a = {};
    for (var p in products) {
      for (var s in p.images) {
        a.add(s);
      }
    }
    return a
        .toList()
        .map((e) => Image.asset(
              e,
              fit: BoxFit.cover,
            ))
        .toList();
  }

  // Category hrmm = Category.all;
  void categoryChanger({required Category a}) {
    hrm = a;
    setState(() {});
  }

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      key: _key,
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
      body: ListView(
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
          if (hrm == Category.all)
            Container(
              color: Colors.grey.shade300,
              height: 500,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 70),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey, width: 3)),
                    height: 450,
                    width: 250,
                    child: Column(
                      children: [
                        ...categories.map((e) => drawerButton(e)).toList()
                      ],
                    ),
                  ),
                  const Expanded(child: MyBanner()),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.headphones_outlined,
                          color: Colors.blue.shade800,
                          size: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 9, 20, 0),
                          child: Column(
                            children: const [
                              Text(
                                'Support:',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text('website@gmail.com',
                                  style: TextStyle(fontSize: 15))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
            child: Text(
              hrm == Category.all ? 'Trending Now!' : hrm.name.toUpperCase(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          // GridView.extent(
          //   physics: const NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   maxCrossAxisExtent: 310,
          //   children: products
          //       .where((e) => hrm == Category.all ? true : e.category == hrm)
          //       .toList()
          //       .map(
          //         (e) => GestureDetector(
          //           onTap: () => Get.to(ProductDetail(prodd: e))!.then((value) {
          //             if (value != null) {
          //               setState(() {
          //                 hrm = value;
          //               });
          //             }
          //           }),
          //           child: ProductCard(
          //             prod: e,
          //           ),
          //         ),
          //       )
          //       .toList(),
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: GridView.extent(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    maxCrossAxisExtent:
                        230, ///////////////////////////////////////////////////////////
                    children: products
                        .where((e) =>
                            hrm == Category.all ? true : e.category == hrm)
                        .toList()
                        .map(
                          (e) => GestureDetector(
                            onTap: () =>
                                Get.to(ProductDetail(prodd: e))!.then((value) {
                              if (value != null) {
                                setState(() {
                                  hrm = value;
                                });
                              }
                            }),
                            child: HoverCard(
                              prod: e,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Image.asset(
                  'asset/images/sale01.jpg',
                  height: 500,
                  width: 280,
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset('asset/images/HEALTH-AND-HOUSEHOLD-1.jpg'),
          const SizedBox(
            height: 40,
          ),
          const Footer()
        ],
      ),
    );
  }

  Widget drawerButton(Category cat) => TextButton(
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.house),
                Text(
                  cat.name.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              width: 200,
              height: 20,
              child: Divider(),
            )
          ],
        ),
        onPressed: () => categoryChanger(a: cat),
      );

  TextButton barButton(Category cat) => TextButton(
        child: Text(
          cat.name.toUpperCase(),
          style: const TextStyle(
            color: Colors.teal,
          ),
        ),
        onPressed: () {
          hrm = cat;
          setState(() {});
        },
      );
}

class HoverCard extends StatefulWidget {
  final Product prod;
  const HoverCard({
    super.key,
    required this.prod,
  });

  @override
  State<HoverCard> createState() => _CustomInfoState();
}

class _CustomInfoState extends State<HoverCard> {
  double? width;
  double? height;
  Color? color;
  bool? animate;
  bool? textAppear;

  @override
  void initState() {
    animate = false;
    textAppear = false;
    showInfoPlayer(animate!);
    super.initState();
  }

  void showInfoPlayer(bool animate) {
    setState(() {
      if (animate) {
        height = 450;
        width = 800;
        color = Colors.grey[500];
        Future.delayed(const Duration(milliseconds: 300), () {
          setState(() {
            textAppear = true;
          });
        });
      } else {
        height = 450;
        width = 500;
        color = Colors.grey[500];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();

    return Scaffold(
      body: Center(
        child: MouseRegion(
          onEnter: (a) {
            setState(() {
              animate = true;
              showInfoPlayer(animate!);
            });
          },
          onExit: (a) {
            animate = false;
            showInfoPlayer(animate!);
            textAppear = false;
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey.shade300),
                    height: height,
                    width: width,
                    duration: const Duration(milliseconds: 300),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 25.0,
                    ),
                    child: AnimatedOpacity(
                      opacity: textAppear! ? 1 : 0,
                      duration: Duration(milliseconds: textAppear! ? 400 : 100),
                      curve: Curves.easeOut,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '£ ${widget.prod.price * 5}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue.shade800,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10.0),
                            width: 270,
                            child: Text(
                              widget.prod.description.substring(0, 20),
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue.shade600,
                              ),
                            ),
                          ),
                          const Divider(),
                          Expanded(
                            child: IconButton(
                              onPressed: () {
                                cartController.addToCart(
                                  CartItem(product: widget.prod, quantity: 1),
                                );
                              },
                              // onPressed: () => Get.to(const CartPage()),
                              icon: const Icon(
                                FontAwesomeIcons.cartShopping,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedContainer(
                    padding: EdgeInsets.only(left: animate! ? 270 : 0),
                    duration: const Duration(milliseconds: 250),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      // child: Image(
                      //   image: NetworkImage(widget.prod.images[0]),
                      //   fit: BoxFit.fill,
                      // ),
                      child: ImageNetwork(
                        image: widget.prod.images[0],
                        height: 400,
                        width: 400,
                        fitWeb: BoxFitWeb.fill,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedOpacity(
                    opacity: textAppear! ? 0 : 1,
                    duration: Duration(milliseconds: textAppear! ? 200 : 200),
                    child: Container(
                      width: width,
                      color: const Color(0xFFF5F5F5).withOpacity(0.7),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.prod.title.substring(0, 10),
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}