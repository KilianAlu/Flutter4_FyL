import 'package:flutter/material.dart';
import 'package:flutter4/model/ciudad.dart';

class pantalla3 extends StatefulWidget {
  const pantalla3({super.key, required this.title, required this.ciudad});

  final String title;
  final Ciudad ciudad;

  @override
  State<StatefulWidget> createState() => pantalla3State();
}

class pantalla3State extends State<pantalla3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
              ))
        ],
      )),
    );
  }
}
