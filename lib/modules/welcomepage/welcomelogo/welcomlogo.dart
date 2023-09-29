import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartparking/component/component.dart';
import 'package:smartparking/constant/constant.dart';
import 'package:smartparking/modules/welcomepage/logo/logo.dart';
import 'package:smartparking/modules/welcomepage/welcome/welcome.dart';
import 'package:smartparking/modules/welcomepage/welfind/hi.dart';
class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Column(
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
                    matrialbuttom(text: 'GetStart', width: 120, color: blue, size: 20,colortext: Colors.white, wight: FontWeight.w900,function: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>hello(
                      ),) ,);})


                  ],
                ),
              )
            ],
          ),
        ),
      ) ,
    );
  }
}