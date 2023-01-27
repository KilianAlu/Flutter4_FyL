import 'package:flutter/material.dart';
import 'package:flutter4/model/ciudad.dart';

String email = "1";
String contrasena = "3";
String value = "0";
int contador = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter4',
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
  @override
  Widget build(BuildContext context) {
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
                          print("a");
                          if (value == null || value.isEmpty) {
                            return "Introduce un email";
                          } 
                          else if(value != "user"){
                            return "Usuario incorrecto";
                          }
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
                            print(value);
                            return "La contraseña debe tener numeors y letras";
                          }
                            else if(value != "pass12345"){
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SecondRoute())));
                    }
                  })
            ]),
          ),
        ));
  }
}

class SecondRoute extends StatefulWidget {
  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {


List<Ciudad> ciudades = [
  Ciudad("Barcelona", "Barcelona es una ciudad española, capital de la comunidad autónoma de Cataluña, de la provincia homónima y de la comarca del Barcelonés.Con una población de 1 636 732 habitantes en 2021,7​ es la segunda ciudad más poblada de España y de la península ibérica después de Madrid, y la décima de la Unión Europea. El área metropolitana de Barcelona tiene 3 339 279 (2020)8​ y el ámbito metropolitano de Barcelona 4 895 876 habitantes (2019), siendo así la quinta ciudad de mayor población de la Unión Europea", "https://fotos.hoteles.net/articulos/guia-barcelona-ciudad-2400-1.jpg"),
  Ciudad("Córdoba", "Córdoba es una ciudad y municipio español en Andalucía, capital de la provincia homónima, situada en una depresión a orillas del Guadalquivir y al pie de Sierra Morena. Alberga una población de 326 039 habitantes en 2020, siendo la tercera ciudad más grande y poblada de Andalucía tras Sevilla y Málaga, y la duodécima de España. Su área metropolitana comprende ocho municipios, con una población de 360 298 habitantes en 2020, la vigésima tercera más poblada de España.5", "data:image/jpeg;base64,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"),
  Ciudad("Vigo", "Vigo es un municipio y una ciudad de España situado en la provincia de Pontevedra, comunidad autónoma de Galicia. Con una población de 293 837 habitantes (INE 2021),6​ es el municipio más poblado de Galicia y el decimocuarto de España,7​8​ así como la mayor ciudad del país sin rango de capital provincial.9​ Además, es la zona urbana más densamente poblada de la conurbación formada por el conjunto de localidades que se sitúan a lo largo de 300 km de las Rías Baixas10​ y el centro de un área metropolitana engloba a otros 13 municipiosn 1​ que suman 481 194 habitantes censados.6​ Los datos del Atlas Estadístico de las Áreas Urbanas en España publicado por el Ministerio de Transportes, Movilidad y Agenda Urbana11​ estiman que el área funcional urbana Vigo-Pontevedra conforma la decimosegunda área metropolitana de España.", "https://www.gestilar.com/uploads/Blog/blog-2022/vivir-en-vigo-barrio-do-cura-gestilar.jpg"),
  Ciudad("Málaga", "Málaga es una ciudad y municipio español, capital de la provincia homónima, situada en la comunidad autónoma de Andalucía. Con una población de 578 460 habitantes al 1 de enero de 2020,8​ es la segunda ciudad más poblada de Andalucía y la sexta de España, así como la mayor de entre las que no son capitales autonómicas.9​ Además, es la zona urbana más densamente poblada de la conurbación formada por el conjunto de localidades que se sitúan a lo largo de 160 km de la Costa del Sol10​11​ y el centro de un área metropolitana que abarca otros 12 municipios que suman 987 813 habitantes censados. Se estima que conforma la quinta área metropolitana de España.", "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Da_Gibralfaro_%28cropped%29.jpg/266px-Da_Gibralfaro_%28cropped%29.jpg")
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
      ),
      body: Center(
          child: ListView.builder(itemBuilder: )),
    );
  }
}
