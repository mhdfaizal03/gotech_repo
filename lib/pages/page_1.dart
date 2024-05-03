import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gotech_app/decoration.dart';
import 'package:gotech_app/pages/Page_2.dart';

class Page1 extends StatefulWidget {
  const Page1({
    super.key,
  });

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return InitBackground(
      child: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'click here to next',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                Get.to(() => const Page2(), transition: Transition.cupertino);
              },
              child: const Icon(Icons.arrow_right),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hi everyone,',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Container(
              child: Image.asset('assets/page1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
