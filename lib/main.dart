import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diabetes',
      home: Login(),

      initialRoute: '/Login',
      routes: {
        '/Tela1': (context)=> Login(),
      },

    )
  );
}

