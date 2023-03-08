import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class testPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => testPageState();
  
}

class testPageState extends State<testPage> {
  @override
  Widget build(BuildContext context) {

    print("la fecha actual es: ${DateFormat('dd-MM-yyyy').format(DateTime.now())}");
    print("El Everest mide: ${NumberFormat("###.##").format(8848.462)}");
    print("El precio del coche es: ${NumberFormat.currency(symbol: "€").format(23.45)}");
    throw notEqual("a", "b");
    
  }
  
}