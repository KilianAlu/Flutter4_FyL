import 'package:flutter/material.dart';

import '../routing/routes.dart';

import 'package:flutter_gen/gen_l10n/app_local.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _home();
}

// ignore: camel_case_types
class _home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context);
    return Scaffold(
/*       appBar: AppBar(
        title: Text("${text?.secondPage}"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.catalogo);
            },
            child: Text("${text?.catalogue}"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.secondRoute, arguments: email);
            },
            child: Text("${text?.countries}"),
          ),
        ],
      )), */
    );
  }
}