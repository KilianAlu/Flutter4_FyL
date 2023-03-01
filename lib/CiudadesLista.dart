import 'package:flutter/material.dart';
import 'package:flutter4/routing/routes.dart';

import 'CiudadDetalles.dart';
import 'package:flutter4/model/ciudad.dart';

import 'model/Global.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key,required this.usuario});
  final String usuario;
  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola ${widget.usuario}"),
      ),
      body: Center(
          child: InkWell(
              child: ListView.builder(
                  itemCount: ciudades.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Hero(
                            tag: ciudades[index].nombre,
                            child: Image.network(
                              ciudades[index].foto,
                              width: 150,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [Text(ciudades[index].nombre)],
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.ciudad,arguments: ciudades[index]);
                      },
                    );
                  }))),
    );
  }
}
