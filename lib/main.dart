import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:myapp/pantalla_inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     //initialRoute: '/', routes: {
      //'/': (context) => LoginPage(),
      //'/home: (context) => LoginPage(),
      //'/register': (context) => RegisterScreen(),
      //'/pantalla_inicio': (context) => const PaginaInicio(),
      home:LoginPage(),
    
     );
  }
}
