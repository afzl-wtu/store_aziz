import 'package:flutter/material.dart';

import '../../widgets/baged_cart_button.dart';

class CheckoutMob extends StatelessWidget {
  const CheckoutMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          "SECURE CHECKOUT",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
        actions: const [
          BadgedCartIconButton(),
        ],
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Billing Details",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First Name ...*',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Last Name ...*',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Country / Region...* United Kingdom (UK)',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'street adress ...*',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    hintText: 'House Number and Street Number',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Town / City ...*',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'phone Number ...*',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Email Adress ...*',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Cash on delivery",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        "Place Order",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
