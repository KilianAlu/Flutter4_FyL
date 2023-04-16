import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter4/routing/routes.dart';


import 'model/Global.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});
  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
 
  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    print(text.helloWorld);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola"),
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
