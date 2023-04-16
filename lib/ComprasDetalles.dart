import 'package:flutter4/model/Objeto.dart';
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class pantalla4 extends StatefulWidget {
  const pantalla4({super.key,required this.title, required this.objetos});
  final String title;
  final Objeto objetos;

  @override
  State<StatefulWidget> createState() => pantalla4State();
}


class pantalla4State extends State<pantalla4> {
   String title = "objetos";
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
            tag: widget.objetos.nombre,
            child: Image.network(
              widget.objetos.foto,
              fit: BoxFit.contain,
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Row(
                    children: 
                      [Text(
                        widget.objetos.descrpcion,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                 
                   Row(
                      children: [
                    Text(
                      widget.objetos.precio,
                      textAlign: TextAlign.justify,
                    ),
                      ]
                    ),
                    Row(
                      children: [
                    Text(
                     DateFormat('dd-MM-yyyy').format(widget.objetos.fechaAlta),
                      textAlign: TextAlign.justify,
                    ),
                      ]
                    ),
                  
                ],
              )),
        ],
      )
      ),
    );
  }
}
