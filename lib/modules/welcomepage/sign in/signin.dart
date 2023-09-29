import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartparking/component/component.dart';
import 'package:smartparking/constant/constant.dart';
class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.only(top:20),
            child: Column(
                children: [
                  text(text: "Let's you in",color:darkblue,weight: FontWeight.w900,size: 30),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                    ),
                    color: Colors.lightBlue,
                    child: MaterialButton(onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/face.jpg',width: 40,height: 30,),
                        text(text: 'Facebook', color: darkblue, weight: FontWeight.w600, size: 20)
                      ],
                    ),
                    ),
                  )



                ],
              ),
          ),
        ),


    );
  }
}
