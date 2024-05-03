import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:gotech_app/appbar.dart';
import 'package:gotech_app/decoration.dart';
import 'package:gotech_app/nextpage_button.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return StartBackgroundColor(
        child: WillPopScope(
      onWillPop: () {
        return FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: AppBarWidget(
            onTap: () {
              FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
              Get.back();
            },
          ),
        ),
        floatingActionButton: NextPageButton(
            goto: () {
              Get.to(() => const Page3());
            },
            navigateText: 'click here to start'),
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Futuristic,',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white38,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Container(
              child: Image.asset(
                'assets/page3.png',
                width: MediaQuery.of(context).size.width * 5,
              ),
            ),
            const Text(
              'Click next to entering the homepage\n of application',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 15),
            )
          ],
        ),
      ),
    ));
  }
}
