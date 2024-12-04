import 'package:app_text/navigation/drawer.dart';
import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: body(),
    
    );
  }
}

class body extends StatelessWidget {
  const body ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 2"),
      ),
      body: Column(
        children: [
          Text("Ejercicio 2"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: velocidad_input(),
          ),
            btn_calculo(context)
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

TextEditingController velocidad = TextEditingController();
Widget velocidad_input(){
  return TextField(
    controller: velocidad,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Altura',
    ),
  );

}


void InfoMessage(context){
    showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text("Mensaje"),
      content: Text("La velocidad recorrida es $calculo"),
    );
  } );

}



Widget btn_calculo(context){
 return FilledButton(onPressed: ()=>calculo(context),
   child: Text("Calcular", style: TextStyle(fontSize: 30),),
   style: ButtonStyle( backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 20, 173, 25)) ),
   );}

double calculo(context){
double _velocidad=double.parse(velocidad.text);
int time=25;

// ignore: unused_local_variable
double distacia = _velocidad * time;

InfoMessage(context);

return calculo(context);

}


