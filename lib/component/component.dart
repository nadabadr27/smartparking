

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartparking/constant/constant.dart';
import 'package:smartparking/modules/welcomepage/welfind/hi.dart';
Widget textBottom({
  @required text,  function

})=> TextButton(child: Text(text,style: TextStyle(fontWeight: FontWeight.w600,fontSize:25,
      color:blue  ),
  ),
  onPressed: function
  );
Widget assetimage({
  @required image,
})=>Image.asset(image,width: double.infinity,height:220,);
Widget text({@required text, @required color, @required weight
  ,required double size
})
=>Text(text,style: TextStyle(color: color,fontWeight: weight,fontSize: size),);
Widget dot({
  @required color
})=> CircleAvatar(
radius: 5,
backgroundColor: color,
);
Widget matrialbuttom({
  @required text,required  double
  width,required double size,@required color,@required colortext,@required wight,function
})=>Container(
  width:width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
  color: color,
    ),
  child:  MaterialButton(onPressed: function

  ,child:Text(text,style: TextStyle(fontWeight: wight,color:colortext,fontSize: size),)),
);
Widget formfield({
  @required type,
  @required controller,
  @required label,
  prefix,
  validate,
  ontap,
  suffix,
obscure,
function,
ispassword=false,
  isClickable = true,
})=>Container(
  height: 55,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(8),
color: gray,
),
   child: TextFormField(
keyboardType:type,
enabled: isClickable,
onTap:ontap,
validator: validate,
decoration: InputDecoration(
labelText: label,
border: OutlineInputBorder(),
prefixIcon:Icon(prefix),
suffixIcon: IconButton(onPressed: function,
icon: Icon(suffix),
)
    ),
     obscureText: ispassword,
),);
Widget buttom({
  @required title,
  @required icon,
  color,
  function,
})=>Container(
height: 55,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(8),
color: grey,
),

child: MaterialButton(onPressed: function,
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(icon,color:color,size: 40,),
SizedBox(
  width: 4,
),
Text(title,style: TextStyle(fontSize:25,
  color: darkblue,
  fontWeight: FontWeight.bold,

),)
],
),
),
);






