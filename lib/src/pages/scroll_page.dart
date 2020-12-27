import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _pagina1(),
          _pagina2(),
        ],
        scrollDirection: Axis.vertical,
      )
    );
  }

  Widget  _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos()
      ],
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          onPressed: (){

          },
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text("Bienvenidos", style: TextStyle(fontSize: 20.0),),
          textColor: Colors.white,
          shape: StadiumBorder(),
          color: Colors.blue,

        ),
      ),

    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0)
    );
  }

  Widget _imagenFondo() {
    return Container(      
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage("assets/scroll-1.png"),
        fit: BoxFit.cover,
      ),
      
    );
  }

  Widget _textos() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 50.0,),
          Text("11°", style: estiloTexto,),
          Text("Miércoles", style: estiloTexto,),
          Expanded(child: 
            Container() 
          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );
  }
}