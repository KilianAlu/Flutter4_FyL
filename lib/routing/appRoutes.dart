import 'package:flutter/material.dart';
import 'package:flutter4/Pantalla1.dart';
import 'package:flutter4/Pantalla2.dart';
import 'package:flutter4/Pantalla3.dart';
import 'package:flutter4/SplashPage.dart';
import 'package:flutter4/model/Ciudad.dart';
import 'package:flutter4/routing/routes.dart';

Map<String,Widget Function(BuildContext)> get appRoutes{
  return{
    Routes.splash : (context) => const SplashPage(),
    Routes.login : (context) => const FirstRoute(title: "Login"),
    Routes.ciudad : (context) => SecondRoute(),
    Routes.ciudades : (context) {
      Ciudad pueblo =  Ciudad("a", "a", "a");
      return pantalla3(title: 'Ciudad', ciudad: pueblo);
    },
  };
}