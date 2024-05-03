import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:gotech_app/appbar.dart';
import 'package:gotech_app/decoration.dart';
import 'package:gotech_app/nextpage_button.dart';
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
    FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StartBackgroundColor(
      child: Scaffold(
        floatingActionButton: NextPageButton(
            goto: () {
              FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
              Get.to(() => const Page3(), transition: Transition.cupertino);
            },
            navigateText: 'click here to next'),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: AppBarWidget(
            onTap: () => Get.back(),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Secured,',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white38,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Container(
              child: Image.asset(
                'assets/page2.png',
                width: MediaQuery.of(context).size.width * 5,
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
                  style: TextStyle(color: Colors.white70, fontSize: 15),
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

    FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
    super.dispose();
  }
}
