import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/component/component.dart';
import 'package:smartpark/constant/constant.dart';
import 'package:smartpark/modules/create%20account/linked%20login/linked.dart';
import 'package:smartpark/modules/welcomepage/logo/logo.dart';
import 'package:smartpark/modules/welcomepage/welfind/hi.dart';
class welcome extends StatelessWidget {
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
      body:
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 70),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          assetimage(image: 'assets/images/Hello-rafiki.png'),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                text(text: 'Welcome',weight: FontWeight.w900,size: 30,color: blue),
                Image.asset('assets/images/hello.png',width: 45,height: 45,),

              ],
              ),
              SizedBox(
                width: 10,
              ),
              text(text: 'Parking Spot',weight: FontWeight.w900,size: 30,color: blue),
            ],
          ),
          SizedBox(
            height: 10,
          ),
            text(text: ' best parking app of the country for',weight: FontWeight.w600,size: 20,color: Colors.black26),
          SizedBox(
          height: 10,
          ),
            text(text: 'all people in the world',weight: FontWeight.w600,size: 20,color: Colors.black26),
          SizedBox(
          width: 50,
          ),
            SizedBox(
              height: 70,
            ),

          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(

              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                children: [
                textBottom(text: 'Back', function:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>logo(
                ),) ,);
                }),
                  SizedBox(
                    width: 80,
                  ),

                  dot(color: blue),
                  dot(color: Colors.black12),
                  dot(color: blue),
                  dot(color: blue),
                SizedBox(
                width: 80,
                ),
                matrialbuttom(text: 'Next', width: 80, color: blue, size: 20,colortext: Colors.white, wight: FontWeight.w900,
                    function: (){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>hi(
      ),) ,);})

                ],
                ),
              ),
            ),
          )
          ],
          ),
        ),
      ),
    ) ,
    );
    }
    }

