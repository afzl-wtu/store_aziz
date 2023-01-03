import 'package:flutter/material.dart';

import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final bool isMob;
  const Footer({super.key, this.isMob = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      // height: 200,
      width: double.infinity,
      child: !isMob
          ? Row(
              children: [
                Expanded(
                  child: privacyWidget(),
                ),
                const SizedBox(
                  height: 150,
                  child: VerticalDivider(
                    color: Colors.white,
                  ),
                ),
                supportWidget()
              ],
            )
          : Column(
              children: [privacyWidget(), Divider(), supportWidget()],
            ),
    );
  }

  Padding privacyWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: [
          const Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          Wrap(children: const [
            Text(
              '''The Site is not intended for individuals under the age of 12. When you place an order through the Site, we will maintain your Order Information for our records unless and until you ask us to delete this information. We may update this privacy policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons.
                         If you have questions and/or require more information, do not hesitate to contact us.''',
              style: TextStyle(color: Colors.white),
              softWrap: true,
            ),
          ])
        ],
      ),
    );
  }

  Padding supportWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.headphones_outlined,
            color: Colors.white,
            size: 60,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 9, 20, 0),
            child: Column(
              children: [
                const Text(
                  'Support',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                TextButton(
                  child: const Text('info@emrsa.co.uk',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  onPressed: () {
                    launchUrl(Uri.parse(Mailto(
                      to: ['info@emrsa.co.uk'],
                    ).toString()));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
