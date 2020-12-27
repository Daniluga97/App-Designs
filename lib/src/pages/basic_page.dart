import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);
  final estiloInfoIcono = TextStyle(fontSize: 15.0, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),            
          _crearDescripcion(),
          _crearDescripcion(),
          _crearDescripcion(),
          _crearDescripcion(),
          ],
        )
      ), 
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage("https://i.redd.it/je268wgvwm651.jpg"),
        height: 200,
        fit: BoxFit.cover
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [                
            Expanded(
              child: Column(      
                crossAxisAlignment: CrossAxisAlignment.start,            
                children: [
                  Text("Lago con un puente", style: estiloTitulo),
                  SizedBox(height: 7.0,),
                  Text("Un lago ubicado en Winden", style: estiloSubtitulo)
                ]                  
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text("41")
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _crearUnaAccion(Icons.phone, "CALL"),
          _crearUnaAccion(Icons.near_me, "ROUTE"),
          _crearUnaAccion(Icons.share, "SHARE"),
        ],
        ),
    );
  }

  Widget _crearUnaAccion(IconData icono, String descripcionIcono){
    return Column(
      children: [
        Icon(icono, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0),
        Text(descripcionIcono, style: estiloInfoIcono)
      ],
    );
  }

  _crearDescripcion() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        "Adipisicing mollit adipisicing nisi et aute. Commodo ut occaecat consequat occaecat id voluptate veniam quis proident ex nisi nostrud. Eiusmod excepteur est minim irure tempor nostrud sunt laboris.",
        textAlign: TextAlign.justify,),
      );
  }
}