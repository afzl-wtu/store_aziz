import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      color: Colors.blue,
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          const Expanded(
            child: ListTile(
              textColor: Colors.white,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/logo.jpeg'),
              ),
              title: Text(
                'EMRSA',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            child: OutlineSearchBar(
              backgroundColor: Colors.white,
              cursorColor: Colors.blueAccent,
              borderColor: Colors.blue,
              searchButtonIconColor: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
      ),
    );
  }
}
