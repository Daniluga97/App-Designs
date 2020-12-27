import 'package:designs/src/pages/basic_page.dart';
import 'package:designs/src/pages/buttons_page.dart';
import 'package:designs/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Para la barra de notificaciones
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.white
    // ));

    return MaterialApp(
      title: 'Diseños App',
      debugShowCheckedModeBanner: false,
      initialRoute: "botones",
      routes: {
        "basico": (BuildContext context) => BasicPage(),
        "scroll": (BuildContext context) => ScrollPage(),
        "botones": (BuildContext context) => ButtonsPage(),
      },
    );
  }
}