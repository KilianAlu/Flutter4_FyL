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
    String? idioma = Intl.defaultLocale;
    switch (Intl.defaultLocale) {
      case 'es_ES':
        idioma = 'es';
        break;
      case 'en_US':
      idioma = 'en';
      break;
      default:
    }
    List<Objeto> compras = objetos[idioma];
    return Scaffold(
      appBar: AppBar(
        title: Text("COMPRAS"),
      ),
      body: Center(
          child: InkWell(
              child: ListView.builder(
                  itemCount: compras.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Hero(
                            tag: compras[index].nombre,
                            child: Image.network(
                              compras[index].foto,
                              width: 150,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [Text(compras[index].nombre), Text(compras[index].precio)],
                            
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.comprasDetalles,arguments: compras[index]);
                      },
                    );
                  }))),
    );
  }}