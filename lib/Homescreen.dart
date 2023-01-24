import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  RxInt num = 0.obs;
  RxBool isTwo = false.obs;

  timer() {
    isTwo == true ? num-- : num++;
  }

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
        appBar: AppBar(
          title: Text("sdfsdf"),
        ),
        body: Obx(
          () {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  num.toString(),
                )),
                isTwo == true ? Text("2") : Text("Other"),
                ElevatedButton(
                  onPressed:() {
                    if ( num == 2 ) {
                      isTwo = RxBool(true);
                    }else if( num == 0 ){
                      isTwo = RxBool(false);
                    }
                    timer();

                    },
                  child: Text("Press me"),
                ),
                isTwo == true ? Text("2") : Text("Other"),
                isTwo == true ? Text("2") : Text("Other"),
                isTwo == true ? Text("2") : Text("Other"),
                isTwo == true ? Text("2") : Text("Other"),
                isTwo == true ? Text("2") : Text("Other"),
                isTwo == true ? Text("2") : Text("Other"),

              ],
            );
          },
        ));
  }
}
