import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //scrollDirection: Axis.horizontal,
        reverse: true,
        controller: ScrollController(),
        itemExtent: 300,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
