import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hi everyone,',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Container(
            child: Image.asset('assets/page1.jpg'),
          ),
        ],
      ),
    );
  }
}
