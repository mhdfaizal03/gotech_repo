import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gotech_app/appbar.dart';
import 'package:gotech_app/decoration.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return InitBackground(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const AppBarWidget(),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'click here to start',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.arrow_right),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              'assets/page3.png',
            ),
          ),
          const Text(
            'Click next to entering the homepage\n of application',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    ));
  }
}
