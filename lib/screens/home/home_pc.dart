import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/screens/home/widgets/ccarousel_slider.dart';
import 'package:newproject/widgets/footer.dart';

import '../../core/cart_controller.dart';
import '../../models/cart_item.dart';
import '../../models/category.dart';
import '../../models/product.dart';
import '../../widgets/baged_cart_button.dart';
import '../../widgets/header.dart';
import '../product/product_detail.dart';

class HomePC extends StatefulWidget {
  const HomePC({super.key});

  @override
  State<HomePC> createState() => _HomePCState();
}

class _HomePCState extends State<HomePC> {
  Category hrm = Category.all;

  // Category hrmm = Category.all;
  void categoryChanger({required Category a}) {
    hrm = a;
    setState(() {});
  }

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      key: _key,
      appBar: AppBar(
        title: Text(
          'VAT Number: GB368916153',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey.shade600),
        ),
        actions: const [
          BadgedCartIconButton(),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const Header(),
          const SizedBox(
            height: 10,
          ),
          if (hrm == Category.all)
            Container(
              color: Colors.white,
              height: 500,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // margin: const EdgeInsets.only(left: 70),
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          border: Border.all(color: Colors.blue, width: 3)),
                      // height: 450,
                      // width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...categories.map((e) => drawerButton(e)).toList()
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 420,
                          width: double.infinity,
                          child: CCarouselSlider(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 70,
                          color: const Color(0xFF0d436d),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30),
                            child: Text(
                              "Affordability, Style and Comfort!",
                              style: GoogleFonts.nanumMyeongjo(
                                textStyle: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
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
                    maxCrossAxisExtent: 230,
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
                  'assets/images/sale01.jpg',
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
          Image.asset('assets/images/HEALTH-AND-HOUSEHOLD-1.jpg'),
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
                        color: Colors.white),
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
                            '£ ${widget.prod.price}',
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
                              widget.prod.description,
                              softWrap: true,
                              maxLines: 4,
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
                              icon: const Icon(
                                FontAwesomeIcons.cartShopping,
                                color: Colors.blue,
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
                      child: Image.asset(
                        widget.prod.images[0],
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
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.prod.title,
                                // softWrap: true,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
