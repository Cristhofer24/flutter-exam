import 'package:app_text/navigation/drawer.dart';
import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

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
        title: Text("Ejercicio 1"),
      ),
      body: Column(
        children: [
          Text("Ejercicio 1"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: altura_input(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: aceleracion_input(),
          ),
            btn_calculo(context)
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
TextEditingController altura = TextEditingController();
Widget altura_input(){
  return TextField(
    controller: altura,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Altura',
    ),
  );

}
TextEditingController aceleracion = TextEditingController();
Widget aceleracion_input(){
  return TextField(
    controller: aceleracion,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Aceleracion',
    ),
  );
}

void SuccesMessage(context){
    showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text("Mensaje"),
      content: Text("El Lanzamiento ha sido Exitoso"),
    );
  } );

}

void ErrorMessage(context){
    showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text("Mensaje"),
      content: Text("El Cohete no cumple con la altura adecuada de 1000 metros"),
    );
  } );

}

Widget btn_calculo(context){
 return FilledButton(onPressed: ()=>Lanzamiento(context),
   child: Text("Calcular", style: TextStyle(fontSize: 30),),
   style: ButtonStyle( backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 20, 173, 25)) ),
   );}

void Lanzamiento(context){
double _altura=double.parse(altura.text);
double _aceleracion=double.parse(aceleracion.text);
int time=10;
double AlturaFinal=0;

AlturaFinal = _altura + (_aceleracion * time * time) / (2 * 9.8);
if(AlturaFinal>1000){
  SuccesMessage(context);
}else{
  ErrorMessage(context);
}
}


