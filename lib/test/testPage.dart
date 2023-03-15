import 'dart:js_util';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class testPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => testPageState();
  
}

class testPageState extends State<testPage> {
  @override
  Widget build(BuildContext context) {
    final texts = AppLocalizations.of(context)!;
    print(texts.helloWorld);
    throw equal(1, 2);
  }
  
}