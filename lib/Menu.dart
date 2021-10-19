import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        title:Text('Menu',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,       
      ),
    );
  }
}