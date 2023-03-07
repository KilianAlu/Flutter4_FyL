import 'package:flutter/material.dart';

class Compras extends StatelessWidget{
  const Compras({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('First Route'),
        ),
      body: Center(
        child: Row(
          children: [
            Text("aaaa")
          ],
        ),
      )
    );
  }}