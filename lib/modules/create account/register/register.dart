import 'package:smartparking/constant/constant.dart';
import 'package:smartparking/component/component.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smartparking/modules/welcomepage/welfind/hi.dart';
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
  var date=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
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
                    formfield(type: TextInputType.datetime, controller:date, label: 'Date of birth ',
                      prefix: Icons.date_range,
                      validate:  (value){
                        if (value!.isEmpty) {
                          return 'date of birth must not be empty';
                        }

                        return null;
                      },
                      ontap: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.parse('1900-12-31'),
                          lastDate: DateTime.parse('2025-12-31'),
                        ).then((value) {
                          date.text =
                              DateFormat.yMMMd().format(value!);
                        });
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

                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>hi(
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




