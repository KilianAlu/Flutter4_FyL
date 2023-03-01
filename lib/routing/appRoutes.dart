import 'package:flutter/material.dart';
import 'package:flutter4/Login.dart';
import 'package:flutter4/CiudadesLista.dart';
import 'package:flutter4/CiudadDetalles.dart';
import 'package:flutter4/SplashPage.dart';
import 'package:flutter4/model/ciudad.dart';
import 'package:flutter4/routing/routes.dart';

Map<String,Widget Function(BuildContext)> get appRoutes{
  return{
    Routes.splash : (context) => const SplashPage(),
    Routes.login : (context) => const FirstRoute(title: "Login"),
    Routes.ciudades : (context) {
      String usu =ModalRoute.of(context)!.settings.arguments as String;
      return SecondRoute(usuario: usu);
    } ,
    Routes.ciudad : (context) {
      Ciudad pueblo =  ModalRoute.of(context)!.settings.arguments as Ciudad;
      return pantalla3(title: 'Ciudad', ciudad: pueblo);
    },
  };
}