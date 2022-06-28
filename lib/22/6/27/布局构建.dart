import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
      margin: const EdgeInsetsDirectional.fromSTEB(100, 10, 100, 30),
      color: Colors.red[400],
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[400]),
          const Icon(Icons.star, color: Colors.black),
          const Icon(Icons.star, color: Colors.black),
        ],
      ),
    );
  }
}

class MyStackView extends StatelessWidget {
  const MyStackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/pic.jpg'),
          radius: 80,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,
          ),
          child: const Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title')),
      body: Center(
        child: Column(
          children: [
            MyWidget(),
            MyStackView(),
          ],
        ),
      ),
    );
  }
}

void main() {
  // debugPaintSizeEnabled = false; // Set to true for visual layouts
  runApp(const MaterialApp(
    title: "布局构建",
    home: MyHome(),
  ));
}
