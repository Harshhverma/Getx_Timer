import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
   Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var num = 0.obs;
  
  @override
  Widget build(BuildContext context) {
    Timer.periodic( Duration(seconds: 2), (timer) {
   print(num);
  num++;
  if (num == 10) {
    print('Cancel timer');
    timer.cancel();
  }
});
    // Timer(Duration(seconds: 1), ()
    // { 
    //   num = num + 1;
    //   print(num);
    //    } );
    return Scaffold(
      appBar: AppBar(
        title: Text("sdfsdf"),
      ),
      body: Center(
        child:  Obx( (){return Text(num.toString());} ),
      ),
    );
  }
}
