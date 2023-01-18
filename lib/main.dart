import 'package:flutter/material.dart';

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
      title: 'Flutter Demo2',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('First Route'),
        ),
        body: Center(
          child: Form(
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
                            }
                            else{
                              email = value;
                            }
                          },))),
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
                          validator: (value){
                            RegExp rex = RegExp(r'^(?=,*[0-9])(?=,*?[a-z])');
                            if (value == null || value.isEmpty) {
                              return "Introduce una contraseña";
                            }
                            else if(!rex.hasMatch(value)){

                            }
                          },))),
              const Text("Forgot Password",
                  style: TextStyle(color: Colors.blue)),
              ElevatedButton(
                  child: const Text("Login"),
                  onPressed: () {
                    if (email == "Usuario" && contrasena == "12345") {
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
  void suma() {
    setState(() {
      contador++;
    });
  }

  void resta() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
      ),
      body: Center(
          child: SizedBox(
              child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text(
              "Bienvenido $email !",
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(90, 0, 90, 0),
            child: Image.network(
              'https://assets.stickpng.com/images/585e4beacb11b227491c3399.png',
              fit: BoxFit.contain,
            ),
          ),
          Text("$contador", style: const TextStyle(fontSize: 50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                  heroTag: "suma",
                  onPressed: suma,
                  child: const Icon(Icons.add)),
              FloatingActionButton(
                  heroTag: "resta",
                  onPressed: resta,
                  child: const Icon(Icons.remove)),
            ],
          ),
          ElevatedButton(
              child: const Text('Volver'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ],
      ))),
    );
  }
}
