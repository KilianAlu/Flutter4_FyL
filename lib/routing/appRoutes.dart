import 'package:flutter/material.dart';
import 'package:flutter4/Login.dart';
import 'package:flutter4/Pantalla2.dart';
import 'package:flutter4/Pantalla3.dart';
import 'package:flutter4/SplashPage.dart';
import 'package:flutter4/model/ciudad.dart';
import 'package:flutter4/routing/routes.dart';

Map<String,Widget Function(BuildContext)> get appRoutes{
  return{
    Routes.splash : (context) => const SplashPage(),
    Routes.login : (context) => const FirstRoute(title: "Login"),
    Routes.ciudades : (context) => SecondRoute(),
    Routes.ciudad : (context) {
      Ciudad pueblo =  ModalRoute.of(context)!.settings.arguments as Ciudad;
      return pantalla3(title: 'Ciudad', ciudad: pueblo);
    },
  };
}