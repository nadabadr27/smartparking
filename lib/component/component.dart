

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
  color: color,

  child:  MaterialButton(onPressed: function

  ,child:Text(text,style: TextStyle(fontWeight: wight,color:colortext,fontSize: size),)),
);

