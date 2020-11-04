import 'package:flutter/material.dart';

class Ejemplo extends StatefulWidget {
  const Ejemplo({Key key}) : super(key: key);
  @override
  _EjemploState createState() => _EjemploState();
}

class _EjemploState extends State<Ejemplo> {
  String nombre = "";
  final nombreController = TextEditingController();
  @override
  void dispose() {
    nombreController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: nombreController,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 50, 150, 255),
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                prefixIcon: Icon(Icons.person),
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: TextButton(
                onPressed: () {
                  nombre = nombreController.text;
                  print("El nombre que escribiste es: $nombre");
                },
                child: Text(
                  'ingresar',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Column(children: [
              Text('Hola: '),
              Text(nombre),
            ])
          ],
        ),
      ),
    );
  }
}
