// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo111'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/test.jpeg',
              height: 300,
              // width: 100,
            ),
            MyView(),
            MyViewB(),
            textSection,
          ],
        ),
      ),
    );
  }
}

class MyView extends StatelessWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pinkAccent,
      margin: const EdgeInsets.only(
        top: 10,
        left: 32,
        bottom: 20,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            // color: Colors.red,
            child: Expanded(
              /*1*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*2*/
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          /*3*/
          FavorateWidget(),
        ],
      ),
    );
  }
}

class FavorateWidget extends StatefulWidget {
  const FavorateWidget({Key? key}) : super(key: key);

  @override
  State<FavorateWidget> createState() => _FavorateWidgetState();
}

class _FavorateWidgetState extends State<FavorateWidget> {
  bool _isFavorate = true;
  int _favorateCount = 41;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: IconButton(
              alignment: Alignment.centerRight,
              icon: _isFavorate ? Icon(Icons.star) : Icon(Icons.star_border),
              color: Colors.red,
              onPressed: _favorateBtnDidPress,
            ),
          ),
          SizedBox(
            width: 40,
            child: Container(
              color: Colors.red,
              child: Text('$_favorateCount'),
            ),
          ),
        ],
      ),
    );
  }

  void _favorateBtnDidPress() {
    setState(() {
      if (_isFavorate) {
        _isFavorate = false;
        _favorateCount -= 1;
      } else {
        _isFavorate = true;
        _favorateCount += 1;
      }
    });
  }
}

class MyViewB extends StatelessWidget {
  const MyViewB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      // color: Colors.red,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 10, 8, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    return buttonSection;
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
