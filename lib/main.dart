import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'Login.dart';
import 'NovoUsuario.dart';
import 'Menu.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ValeFarma',
      home: NovoUsuario(),

      initialRoute: '/Login',
      routes: {
        //'/login': (context)=> Login(),
        '/novousuario': (context)=> NovoUsuario(),
        '/menu': (context)=> Menu(),
      },

      theme: ThemeData(
        primaryColor: Colors.grey[800],
        backgroundColor: Colors.grey[100],
        
        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.normal
          ),
          headline2: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.normal
          )

        )
      )

    )
  );
}

