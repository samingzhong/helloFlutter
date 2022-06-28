import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    hello();
    return MaterialApp(
      home: HomePageWidget(),
    );
  }

  void hello() {
    print("hello world");
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  var check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("day 01_v2"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: check,
                onChanged: (value) {
                  print(value);

                  setState(() {
                    check = !check;
                  });
                }),
            Text(
              "hello",
              style: TextStyle(fontSize: 30),
            ),
            Container(
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
