import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/component/component.dart';
import 'package:smartpark/constant/constant.dart';
import 'package:smartpark/modules/create%20account/linked%20login/linked.dart';
import 'package:smartpark/modules/welcomepage/logo/logo.dart';
import 'package:smartpark/modules/welcomepage/welcome/welcome.dart';
import 'package:smartpark/modules/welcomepage//welcomelogo/welcomlogo.dart';
class hi extends StatelessWidget {
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
          padding: const EdgeInsets.only(top:90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              assetimage(image: 'assets/images/Parking-amico.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(text: 'Find parking',weight: FontWeight.bold,color:darkblue,size: 30),
                  text(text: 'Places',weight: FontWeight.bold,color:blue,size: 30),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              text(text: 'around easily',weight: FontWeight.bold,color:darkblue,size: 30),
              SizedBox(
                height: 10,
              ),
              text(text: 'Search for nearby places',weight: FontWeight.w600,color:Colors.black26,size: 20),
              SizedBox(
                width: 50,
              ),
              text(text: 'affordable price',weight: FontWeight.w600,color:Colors.black26,size: 20),
              SizedBox(
                height: 70,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(

                    children: [
           textBottom(text: 'Back',  function:(){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>welcome(
             ),) ,);
           }),
                      SizedBox(
                        width: 80,
                      ),
                      dot(color: blue),
                      dot(color: blue),
                      dot(color: Colors.black12),
                      dot(color: blue),


                      SizedBox(
                        width: 80,
                      ),
                      matrialbuttom(text: 'Next', width: 85, color: blue, size: 20,colortext: Colors.white, wight: FontWeight.w900,function: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>hello(
                        ),) ,);})

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ) ,
    );
  }
}
