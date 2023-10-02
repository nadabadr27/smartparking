import 'package:intl/intl.dart';
import 'package:smartpark/constant/constant.dart';
import 'package:smartpark/component/component.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/modules/create%20account/continue%20register/continue.dart';
import 'package:smartpark/modules/create%20account/register/register.dart';
//import 'package:smartparking/modules/createaccount/register/register.dart';
import 'package:smartpark/modules/welcomepage/welfind/hi.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class linked extends StatefulWidget {
  @override
  _linkedState createState() => _linkedState();
}

class _linkedState extends State<linked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black26,),),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top:50,right: 20,left: 20),
          child: Column(
            children: [

              text(text: "Let's you in", color: darkblue, weight: FontWeight.w700, size: 35),
              SizedBox(
                height: 30,
              ),
              buttom(title: "Facebook", icon: Icons.facebook,color: Colors.blue,
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
                height: 60,
              ),
              Row(
                children: [
                  Expanded(child: Divider(
                    thickness: .5,
                    color:Colors.grey,
                  )),
                  CircleAvatar(
                    radius: 20,
                    child:text(text: 'OR',weight: FontWeight.w600,size: 20,color: darkblue),
                    backgroundColor: gray,
                  ),
                  Expanded(child: Divider(
                    thickness: .5,
                    color:Colors.grey,
                  )),
                ],
              ),
              SizedBox(
                height: 60,
              ),

              matrialbuttom(text: 'Sign in', width: double.infinity, size: 20, color: blue, colortext: Colors.white, wight: FontWeight.w600),
              SizedBox(
                height: 80,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    text(text: "Don't have account", color: Colors.black12, weight: FontWeight.w600, size: 20,),
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
