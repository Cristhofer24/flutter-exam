import 'package:app_text/navigation/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Screen1());
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: body(),
    );
  }
}

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text("Menu Principal", 
        style: TextStyle(color: Color.fromRGBO(245, 244, 248, 0.435)),),
        backgroundColor: Color.fromARGB(255, 42, 133, 141),
      ),
      drawer:  MyDrawer(),
      body: Column(
        children: [
          Text("Ejercicios"),
          btn_navegacion(context),
        ],
      ),
    );
  }
}

Widget btn_navegacion(context){
return ElevatedButton.icon(onPressed:()=>(), label: Text("Ir al Ejercicio 1"), icon:Icon(Icons.navigate_next_outlined),);

}