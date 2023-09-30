import 'package:intl/intl.dart';
import 'package:smartparking/constant/constant.dart';
import 'package:smartparking/component/component.dart';
import 'package:flutter/material.dart';
import 'package:smartparking/modules/create%20account/continue%20register/continue.dart';
import 'package:smartparking/modules/create%20account/register/register.dart';
//import 'package:smartparking/modules/createaccount/register/register.dart';
import 'package:smartparking/modules/welcomepage/welfind/hi.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class linked extends StatefulWidget {
  @override
  _linkedState createState() => _linkedState();
}

class _linkedState extends State<linked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top:100,right: 20,left: 20),
          child: Column(
            children: [

              text(text: "Let's you in", color: darkblue, weight: FontWeight.w700, size: 35),
              SizedBox(
                height: 30,
              ),
            buttom(title: "Facebook", icon: Icons.facebook,color: Colors.blue
               ),
              SizedBox(
                height: 10,
              ),
              buttom(title: "Google", icon: FontAwesomeIcons.google,color: Colors.redAccent,
              ),
              SizedBox(
                height: 10,
              ),
              buttom(title: "Apple", icon: FontAwesomeIcons.apple,color: Colors.black
              ),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 15,
                child: Text('OR',style: TextStyle(color: darkblue),),
                backgroundColor: gray,
              ),
              SizedBox(
                height: 60,
              ),

              matrialbuttom(text: 'Sign in', width: double.infinity, size: 20, color: blue, colortext: Colors.white, wight: FontWeight.w600),
              SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    text(text: "Don't have account", color: Colors.black12, weight: FontWeight.w600, size: 20),
                   SizedBox(
                     width: 5,
                   ),
                   textBottom(text: 'Sign up',function: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>register(
    ),) ,);
    }


                   )
                  ],
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
