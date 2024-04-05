import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          // width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.red,
              // ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.yellow,
              // ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.blue,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
 class MyWidget{
  int _age;
   void build(){

   }
 }


 void main(){
   MyWidget obj = MyWidget();
   obj.build();
 }

 ------------------

  class MyWidget{
    get _myWidget();
  }

  class _myWidget{

  }

*/
