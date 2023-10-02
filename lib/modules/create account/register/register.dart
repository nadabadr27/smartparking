import 'package:smartpark/constant/constant.dart';
import 'package:smartpark/component/component.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smartpark/modules/create%20account/continue%20register/continue.dart';
import 'package:smartpark/modules/welcomepage/welfind/hi.dart';
class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  var colorofcar=TextEditingController();
  var typeofcar=TextEditingController();
  var nummbercar=TextEditingController();
  var fullname=TextEditingController();
  var phone=TextEditingController();
  var age=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black26,),),),
        body:  Form(
          key: formKey,
          child: SingleChildScrollView (
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(text: 'Create your ', color: darkblue, weight: FontWeight.w800, size:35),
                    text(text: 'account', color: blue, weight: FontWeight.w800, size: 35),
                    SizedBox(
                      height: 45,
                    ),
                    formfield(type: TextInputType.name, controller: fullname,
                      label: 'Full name', prefix: Icons.drive_file_rename_outline,
                      validate:  (value){
                        if (value!.isEmpty) {
                          return 'full name must not be empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    formfield(type: TextInputType.number,
                      controller:age, label: 'Age ',
                      prefix: Icons.data_usage_outlined,
                      validate:  (value){
                        if (value!.isEmpty) {
                          return 'age must not be empty';
                        }
                        return null;
                      },


                    ),
                    SizedBox(
                      height: 10,
                    ),
                    formfield(type: TextInputType.phone, controller: phone, label: 'Phone number', prefix: Icons.phone,
                      validate:  (value){
                        if (value!.isEmpty) {
                          return 'phone must not be empty';
                        }

                        return null;
                      },


                    ),
                    SizedBox(
                      height: 10,
                    ),
                    formfield(type: TextInputType.text, label: 'Type of car ', prefix: Icons.car_rental,

                      validate: ( value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'type of car must be not empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height:10,
                    ),
                    formfield(type: TextInputType.text, controller:nummbercar , label: 'Number of car', prefix: Icons.car_repair,

                      validate: ( value)
                      {
                        if(value!.isEmpty)
                        {
                          return ' number of car  must be not empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    formfield(type: TextInputType.text, controller:colorofcar , label: 'Color of car', prefix: Icons.camera,

                      validate: ( value)
                      {
                        if(value!.isEmpty)
                        {
                          return ' number of car  must be not empty';
                        }
                        return null;
                      },
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top:80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              matrialbuttom(text: 'Continue', width: double.infinity, size:20,
                                  color: blue, colortext: Colors.white, wight: FontWeight.w600,function: (){

                                    if( formKey.currentState!.validate()){

                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>signin(
                                      ),) ,);
                                    }
                                    return null;
                                  }),
                            ],
                          ),
                        )),
                  ]
              ),
            ),
          ),
        )
    );
  }
}
