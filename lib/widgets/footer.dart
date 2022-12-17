import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      height: 300,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
            child: Column(
              children: const [
                Text(
                  'PRIVACY POLICY',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'SHIPPING POLICY',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'SHIPPING INFO',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'CONTACT US',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: Column(
              children: const [
                Text(
                  'REFUND POLICY',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'TERM OF SERVICE',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'PAYMENT FAQS',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const VerticalDivider(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}