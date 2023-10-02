import 'package:smartpark/constant/constant.dart';
import 'package:smartpark/component/component.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/modules/welcomepage/welfind/hi.dart';
class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}
class _signinState extends State<signin> {
  bool isconfirm=true;
  bool ispassword=true;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  var numberofpersonal=TextEditingController();
  var nummberoflincecar=TextEditingController();
  var email=TextEditingController();
  var password=TextEditingController();
  var confirmpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black26,),),),
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
                    text(text: ' Continue create ', color: darkblue, weight: FontWeight.w800, size:35),
                    text(text: 'account', color: blue, weight: FontWeight.w800, size: 35),
                    SizedBox(
                      height: 45,
                    ),
                    formfield(type: TextInputType.number, controller: numberofpersonal,
                      label: 'Personal licence number', prefix: Icons.confirmation_num_outlined,
                      validate:  (value){
                        if (value!.isEmpty) {
                          return 'Personal licence number must not be empty';
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    formfield(type: TextInputType.number, controller:nummberoflincecar, label: 'Car licence number',
                      prefix: Icons.call_to_action_rounded,
                      validate:  (value){
                        if (value!.isEmpty) {
                          return 'Car licence number must not be empty';
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    formfield(type: TextInputType.emailAddress, controller: email, label: 'E-mail', prefix: Icons.email,
                        validate:  (value){
                          if (value!.isEmpty) {
                            return 'E-mail must not be empty';
                          }

                          return null;
                        },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    formfield(type: TextInputType.text, controller:password , label: 'Password', prefix: Icons.lock,
                      suffix: ispassword?Icons.visibility : Icons.visibility_off,
                      function: () {
                        setState(()
                        {
                          ispassword = !ispassword;
                        });
                      },

                      ispassword:ispassword  ,
                      validate: ( value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'password must be not empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height:10,
                    ),
                    formfield(type: TextInputType.text, controller:confirmpassword , label: 'Confirm password', prefix: Icons.lock,
                      suffix: isconfirm?Icons.visibility : Icons.visibility_off,
                      function: () {
                        setState(()
                        {
                          isconfirm = !isconfirm;
                        });
                      },

                      ispassword:isconfirm  ,
                      validate: ( value)
                      {
                        if(value!.isEmpty)
                        {
                          return ' confirm password must be not empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
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
                              matrialbuttom(text: 'Sign in', width: double.infinity, size:20,
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




