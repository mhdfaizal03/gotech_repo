import 'package:flutter/material.dart';

class NextPageButton extends StatelessWidget {
  String navigateText;
  Function() goto;
  NextPageButton({super.key, required this.goto, required this.navigateText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          navigateText,
          style: const TextStyle(color: Colors.white60),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: goto,
          child: const Icon(Icons.arrow_right),
        ),
      ],
    );
  }
}
