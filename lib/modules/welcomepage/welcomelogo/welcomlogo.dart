import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/component/component.dart';
import 'package:smartpark/constant/constant.dart';
import 'package:smartpark/modules/create%20account/linked%20login/linked.dart';
import 'package:smartpark/modules/welcomepage/logo/logo.dart';
import 'package:smartpark/modules/welcomepage/welcome/welcome.dart';
import 'package:smartpark/modules/welcomepage/welfind/hi.dart';
class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        actions: [
          textBottom(text: 'Skip',function: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>linked(
            ),) ,);})
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child:
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                assetimage(image: 'assets/images/Credit card-pana.png'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(text: 'Book and Pay',weight: FontWeight.bold,color:darkblue,size: 30),
                    text(text: 'Parking',weight: FontWeight.bold,color:blue,size: 30),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                text(text: 'Quickly & Safely',weight: FontWeight.bold,color:darkblue,size: 30),
                SizedBox(
                  height: 10,
                ),
                text(text: 'Select the best payment option',weight: FontWeight.w600,color:Colors.black26,size: 20),
                SizedBox(
                  width: 50,
                ),
                text(text: 'and save your option',weight: FontWeight.w600,color:Colors.black26,size: 20),
                SizedBox(
                  height: 70,
                ),

                 Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child:
                       Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            textBottom(text: 'Back', function:(){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>hi(
                              ),) ,);
                            }),
                            SizedBox(
                              width: 80,
                            ),
                            dot(color: blue),
                            dot(color: blue),
                            dot(color: blue),
                            dot(color: Colors.black12),


                            SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: matrialbuttom(text: 'GetStart', width: 120, color: blue, size: 20,colortext: Colors.white, wight: FontWeight.w900,function: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>linked(
                                ),) ,);}),
                            )


                          ],
                        ),
                      ),
                 ),
              ],
            ),
          ),
      ),

    );
  }
}
