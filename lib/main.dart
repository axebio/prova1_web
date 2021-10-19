import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Login.dart';
import 'NovoUsuario.dart';
<<<<<<< HEAD
// import 'Menu.dart';
=======
import 'Menu.dart';

>>>>>>> 5756542b54e6d0f322bb7521a312473cfa7de227

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ValeFarma',
      home: NovoUsuario(),
      initialRoute: '/Login',
      routes: {
<<<<<<< HEAD
        //'/Tela1': (context)=> Login(),
        '/Tela2': (context) => NovoUsuario(),
        //'/Tela3': (context)=> Menu(),
=======
        //'/login': (context)=> Login(),
        '/novousuario': (context)=> NovoUsuario(),
        '/menu': (context)=> Menu(),
>>>>>>> 5756542b54e6d0f322bb7521a312473cfa7de227
      },
      theme: ThemeData(
          primaryColor: Colors.grey[800],
          backgroundColor: Colors.grey[100],
          textTheme: TextTheme(
              headline1: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.normal),
              headline2: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal)))));
}
