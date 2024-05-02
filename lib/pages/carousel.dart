import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gotech_app/pages/Page_2.dart';
import 'package:gotech_app/pages/page_1.dart';
import 'package:gotech_app/pages/page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    super.key,
  });

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  bool isFirstPage = false;
  bool isLastPage = false;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              isFirstPage = value > 0;
              isLastPage = value < 2;
            });
          },
          children: const [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                isFirstPage
                    ? TextButton(
                        onPressed: () {
                          controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeOut);
                        },
                        child: const Text('Back'))
                    : const TextButton(onPressed: null, child: Text('Back')),
                SmoothPageIndicator(
                    effect: const JumpingDotEffect(),
                    controller: controller,
                    count: 3),
                isLastPage
                    ? TextButton(
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text('Next'))
                    : TextButton(
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text('Done')),
              ],
            ))
      ],
    ));
  }
}
