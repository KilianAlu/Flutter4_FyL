import 'package:flutter/material.dart';
import 'package:flutter4/model/Global.dart';
import 'package:flutter4/model/ciudad.dart';
import 'package:flutter4/routing/routes.dart';

class pantalla3 extends StatefulWidget {
  const pantalla3({super.key,required this.title, required this.ciudad});
  final String title;
  final Ciudad ciudad;

  @override
  State<StatefulWidget> createState() => pantalla3State();
}


class pantalla3State extends State<pantalla3> {
   String title = "Ciudad";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(
        children: [
          Hero(
            tag: widget.ciudad.nombre,
            child: Image.network(
              widget.ciudad.foto,
              fit: BoxFit.contain,
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.ciudad.descrpcion,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              )),
            TextButton(
              onPressed: (() => showDialog<String>(context: context, 
              builder: (BuildContext context) => AlertDialog(
                title: const Text("Borrar Ciudad?"),
                content: const Text("Quieres borrar esta ciudad?"),
                actions : <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, "No"),
                     child: const Text("No")
                  ),
                  TextButton(
                    onPressed: (){ 
                      eliminarCiudad(widget.ciudad);
                      Navigator.pop(context, "Yes");
                      Navigator.pushReplacementNamed(context, Routes.ciudades);
                      },
                     child: const Text("Yes")
                  ),
                ]
              ),
              )),
              child: const Text("Borrar Ciudad"),)
        ],
      )
      ),
    );
  }
}
