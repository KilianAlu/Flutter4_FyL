import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter4/routing/appRoutes.dart';
import 'package:flutter4/routing/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

final defaultLocale = ui.window.locale.languageCode;
final defaultLanguage = ui.window.locale.countryCode;

String get defaultDeviceLanguage {
 String defLocale = defaultLocale;
  if(defaultLanguage != null){
    defLocale += '_$defaultLanguage';
  }
  return defLocale;
}

void main() {
  Intl.defaultLocale = defaultDeviceLanguage;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => MainState();
}
class MainState extends State{
    late Locale _locale;
    Locale get locale => _locale;

    final _supportedLocales = const [
      Locale('es'),
      Locale('en'),
      Locale('fr'),
    ];
    @override
    void initState(){
      super.initState();

      _locale = Locale(defaultLocale,defaultLanguage);
    }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter4',
       localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

      ],
      supportedLocales: _supportedLocales,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splash,
      routes: appRoutes,
      home: const FirstRoute(title: 'Login Page'),
    );
  }
}

class FirstRoute extends StatefulWidget {
  const FirstRoute({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => FirstRouteState();
}

class FirstRouteState extends State<FirstRoute> {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  
  final key = GlobalKey<FormState>();
  late String nombre;
  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    print(text.helloWorld);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('First Route'),
        ),
        body: Center(
          child: Form(
            key: key,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(100, 5, 100, 5),
                  child: Image.network(
                    "https://i0.wp.com/clay-atlas.com/wp-content/uploads/2021/02/Flutter_LOGO.png?resize=930%2C375&ssl=1",
                    fit: BoxFit.contain,
                    width: 120,
                  )),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Introduce un email";
                          } else if (value != "user") {
                            return "Usuario incorrecto";
                          }
                          nombre = value;
                          return null;
                        },
                      ))),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contraseña',
                        ),
                        validator: (value) {
                          RegExp rex = RegExp(r'^(?=.*?[0-9])(?=.*[a-z])');
                          if (value == null || value.isEmpty) {
                            return "Introduce una contraseña";
                          } else if (!rex.hasMatch(value)) {
                            return "La contraseña debe tener numeros y letras";
                          } else if (value != "pass12345") {
                            return "Contraseña equivocada";
                          }
                          return null;
                        },
                      ))),
              const Text("Forgot Password",
                  style: TextStyle(color: Colors.blue)),
              ElevatedButton(
                  child: const Text("Login"),
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      Navigator.pushReplacementNamed(context, Routes.ciudades, arguments: nombre);
                    }
                  })
            ]),
          ),
        ));
  }
}

