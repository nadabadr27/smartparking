import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartparking/constant/constant.dart';
import 'package:smartparking/component/component.dart';
import 'package:smartparking/modules/welcomepage/welcome/welcome.dart';
class logo extends StatefulWidget {
  @override
  _logoState createState() => _logoState();
}

class _logoState extends State<logo> {
  bool logopressed=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: EdgeInsets.only(top:90),
  child:   Column(
   mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/images/City driver-pana.png',width: double.infinity,height: 370,),
      text(text:'Parking Spot',color: blue,weight: FontWeight.w900,size: 40),

      Expanded(
          child: Padding(
            padding:EdgeInsets.only(top:80,left: 250),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.end,
              children: [

              matrialbuttom(text: 'Hello', width: 80, color: blue, size: 20,colortext: Colors.white, wight: FontWeight.bold,function: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>welcome(
                ),) ,);
              })


              ],
            ),
          )
      )
    ],
  ),
),
    );
  }
}
