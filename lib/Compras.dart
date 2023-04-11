import 'package:flutter/material.dart';
import 'package:flutter4/Login.dart';
import 'package:flutter4/model/Global.dart';
import 'package:flutter4/routing/routes.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:intl/intl.dart';

import 'model/Objeto.dart';

class Compras extends StatefulWidget{
  const Compras({super.key});
  final String a = "a";

  @override
  State<StatefulWidget> createState() => comprasState();

}
class comprasState extends State<Compras>{
 @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
       
    return Scaffold(
      appBar: AppBar(
        title: Text("COMPRAS"),
      ),
      body: Center(
          child: InkWell(
              child: ListView.builder(
                  itemCount: objetos.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Hero(
                            tag: objetos[index].nombre,
                            child: Image.network(
                              objetos[index].foto,
                              width: 150,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [Text(objetos[index].nombre)],
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.ciudad,arguments: objetos[index]);
                      },
                    );
                  }))),
    );
  }}