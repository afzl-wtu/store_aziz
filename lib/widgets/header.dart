import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_aziz/models/product.dart';
import 'package:store_aziz/screens/product/product_detail.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  var localProducts = <Product>[];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: localProducts.isNotEmpty ? 470 : 70,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            color: Colors.blue,
            height: 70,
            width: double.infinity,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: const AssetImage('assets/images/logo.jpeg'),
                ),
                SizedBox(
                  width: _width > 480 ? 25 : 10,
                ),
                Text(
                  'KHATTAN STAR',
                  style: TextStyle(
                      fontSize: _width > 480 ? 30 : 20, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                if (_width > 480) const Spacer(),
                Expanded(
                  child: OutlineSearchBar(
                    backgroundColor: Colors.white,
                    cursorColor: Colors.blueAccent,
                    borderColor: Colors.blue,
                    searchButtonIconColor: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                    onKeywordChanged: (value) {
                      if (value.isEmpty) {
                        localProducts = [];
                      } else {
                        localProducts = products
                            .where((e) => e.title
                                .toLowerCase()
                                .contains(value.toLowerCase()))
                            .toList();
                      }
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
          if (localProducts.isNotEmpty)
            Expanded(
              child: SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: localProducts.length,
                    itemBuilder: (ctx, i) => ListTile(
                      onTap: () => Get.to(
                          ProductDetail(prodd: localProducts[i]),
                          preventDuplicates: false),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(localProducts[i].images[0]),
                      ),
                      title: Text(
                        localProducts[i].title,
                        softWrap: true,
                      ),
                      subtitle: Text(localProducts[0].category.name),
                    ),
                  )),
            )
        ],
      ),
    );
  }
}
