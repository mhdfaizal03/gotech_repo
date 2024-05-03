import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:gotech_app/appbar.dart';
import 'package:gotech_app/decoration.dart';
import 'package:gotech_app/pages/page_3.dart';

class Page2 extends StatefulWidget {
  const Page2({
    super.key,
  });

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

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
                Get.to(() => const Page3(), transition: Transition.cupertino);
              },
              child: const Icon(Icons.arrow_right),
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const AppBarWidget(),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Secure,',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Container(
              child: Image.asset(
                'assets/page2.png',
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.orange,
                ),
                Text(
                  'Taking screenshots or video recording are \n restricted on this page',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
  }
}
