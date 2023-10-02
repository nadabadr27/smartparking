import 'package:smartpark/modules/create%20account/linked%20login/linked.dart';
import 'package:smartpark/modules/welcomepage/logo/logo.dart';
//import 'package:smartparking/modules/welcomepage/sign%20in/signin.dart';
import 'package:smartpark/modules/welcomepage/welcome/welcome.dart';

import 'modules/create account/register/register.dart';

void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.greenAccent,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white,
          elevation: 0.0,
        //  iconTheme: IconThemeData(color: Colors.black),
          backwardsCompatibility: false,
          titleTextStyle: TextStyle(color: darkblue,
              fontWeight: FontWeight.w900,
              fontSize: 20.0),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor:Colors.white,
              statusBarIconBrightness: Brightness.dark

          ),
        ),

      ),
      //themeMode: ThemeMode.dark,
      home:welcome(),
    );
  }
}
