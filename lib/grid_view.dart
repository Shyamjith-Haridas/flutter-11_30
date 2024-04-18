import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(5),
          itemCount: 27,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1,
            //mainAxisExtent: 50,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Count $index",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/*
  grid view
  ----------
  GridView(
          reverse: true,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
            ),
          ],
        ),




*/
