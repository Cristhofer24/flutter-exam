import 'package:app_text/main.dart';
import 'package:app_text/screens/exercise1.dart';
import 'package:app_text/screens/exercise2.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          ListTile(
            title: Text("Menu Principal"),
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> Screen1())),
          ),
          ListTile(
            title: Text("Ejercicio 1"),
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> Exercise1())),
          ),
          ListTile(
            title: Text("Ejercicio 2"),
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> Exercise2())),
          )
        ]
      ),
    );
  }
}