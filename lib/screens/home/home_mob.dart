import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
// import 'package:image_network/image_network.dart';
import 'package:newproject/models/category.dart';
import 'package:newproject/screens/product/product_detail_mob.dart';
import 'package:newproject/widgets/footer.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:phlox_drawer/controller/phlox_drawer_controller.dart';
import 'package:phlox_drawer/controller/phlox_drawer_option.dart';
import 'package:phlox_drawer/phlox_drawer.dart';

import '../../widgets/baged_cart_button.dart';
import '../../models/product.dart';

class HomeMob extends StatefulWidget {
  const HomeMob({Key? key}) : super(key: key);

  @override
  State<HomeMob> createState() => _HomeMobState();
}

class _HomeMobState extends State<HomeMob> {
  final _drawerController = PhloxDrawerController();
  Category hrm = Category.all;
  List<Product> catProducts = [];
  void categoryChanger({required Category a}) {
    hrm = a;
    _drawerController.toggle();
    catProducts = products.where((e) => e.category == a).toList();
    setState(() {});
  }

  List<Widget> sliderImages() {
    Set<String> a = {};
    for (var p in products) {
      for (var s in p.images) {
        a.add(s);
      }
    }
    return a.toList().map((e) => Image.asset(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return PhloxDrawer(
      context: context,
      controller: _drawerController,
      options: PhloxDrawerOption.oneScreen(),
      duration: const Duration(seconds: 1),
      drawerPage: DrawerPage(categoryChanger),
      mainPage: Scaffold(
        appBar: AppBar(
          actions: const [
            BadgedCartIconButton(),
          ],
          backgroundColor: Colors.grey.shade50,
          elevation: 0,
          leading: IconButton(
              onPressed: () => _drawerController.toggle(),
              icon: const Icon(
                Icons.menu,
                color: Colors.blue,
              )),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: Colors.blue,
              height: 50,
              width: double.infinity,
              child: OutlineSearchBar(
                cursorColor: Colors.blue,
                borderColor: Colors.blue,
                searchButtonIconColor: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  if (hrm == Category.all)
                    SizedBox(
                      height: 320,
                      width: double.infinity,
                      child: CarouselSlider(
                        items: [
                          Image.network(
                            'https://dubaiofw.com/wp-content/uploads/2020/11/1-to-10-Dirham-Shops-in-Dubai-and-Best-Discount-Storesc.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://cdn.shopify.com/s/files/1/0070/7032/files/discount-hero.jpg?v=1493781512',
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://images.moneycontrol.com/static-mcnews/2021/10/Online-shopping.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://prod-dubaistore-bucket.oss-me-east-1.aliyuncs.com/ds-assets/sites/site-100/filename16702184.17362.jpeg?x-oss-process=image/format,webp/quality,q_80',
                            fit: BoxFit.fill,
                          ),
                        ],
                        options: CarouselOptions(
                            viewportFraction: 1,
                            autoPlay: true,
                            enlargeCenterPage: false),
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.all(9),
                    color: Colors.grey.shade200,
                    height: 40,
                    width: double.infinity,
                    child: Text(
                      "START BUY WITH LOVE!",
                      style: GoogleFonts.nanumMyeongjo(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 80, 0, 20),
                    child: Text(
                      hrm == Category.all
                          ? 'Trending Now!'
                          : hrm.name.toUpperCase(),
                      style: GoogleFonts.nanumMyeongjo(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hrm == Category.all
                            ? products.length ~/ 3
                            : catProducts.length,
                        itemBuilder: (c, i) {
                          return ProductCard(
                              pro: hrm == Category.all
                                  ? products[i]
                                  : catProducts[i]);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
                    child: Text(
                      'Hole Sale!',
                      style: GoogleFonts.nanumMyeongjo(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length ~/ 3,
                        itemBuilder: (c, i) {
                          return ProductCard(
                              pro: products[products.length ~/ 3 + i]);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
                    child: Text(
                      'SomeThing New!',
                      style: GoogleFonts.nanumMyeongjo(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            products.length - (2 * (products.length ~/ 3)),
                        itemBuilder: (c, i) {
                          return ProductCard(
                              pro: products[(2 * (products.length ~/ 3)) + i]);
                        }),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Footer(
                    isMob: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product pro;
  const ProductCard({
    Key? key,
    required this.pro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (() => Get.to(
                    ProductDetailMob(prod: pro),
                  )),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(7)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Image.network(
                      pro.images[0],
                      height: 160,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        pro.title.substring(0, 30),
                        style: GoogleFonts.nanumMyeongjo(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '£ ${pro.price * 2}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue.shade800),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerPage extends StatelessWidget {
  final void Function({required Category a}) drawerCatChanger;
  const DrawerPage(this.drawerCatChanger, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FloatingActionButton.small(
              backgroundColor: Colors.blue,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onPressed: () => drawerCatChanger(a: Category.all),
              child: const Icon(Icons.close),
            ),
            const SizedBox(
              height: 30,
            ),
            ...categories.map((e) => drawerButton(e)).toList()
          ],
        ),
      ),
    );
  }

  Widget drawerButton(Category cat) => TextButton(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              cat.name.toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 200,
              height: 30,
              child: Divider(),
            )
          ],
        ),
        onPressed: () => drawerCatChanger(a: cat),
      );
}
