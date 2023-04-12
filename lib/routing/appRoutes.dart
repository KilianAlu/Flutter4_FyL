import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter4/Compras.dart';
import 'package:flutter4/ComprasDetalles.dart';
import 'package:flutter4/Home.dart';
import 'package:flutter4/Login.dart';
import 'package:flutter4/CiudadesLista.dart';
import 'package:flutter4/CiudadDetalles.dart';
import 'package:flutter4/SplashPage.dart';
import 'package:flutter4/model/Objeto.dart';
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
    Routes.compras : (context) => const Compras(),
    Routes.home : (context) => const Home(),
     Routes.comprasDetalles : (context) {
      Objeto pueblo =  ModalRoute.of(context)!.settings.arguments as Objeto;
      return pantalla4(title: 'Tienda', objetos:pueblo);
    },
  };
}