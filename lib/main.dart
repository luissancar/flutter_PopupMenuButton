// ignore_for_file: prefer_conitet_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _paginas = [Pag01(), Pag02(), Pag03()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Menu"),
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
                textTheme: TextTheme().apply(bodyColor: Colors.black),
                dividerColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.white)),
            child: PopupMenuButton<int>(
              color: Colors.black,
              itemBuilder: (context) => [
                PopupMenuItem<int>(value: 0, child: Text("Home")),
                PopupMenuItem<int>(value: 1, child: Text("Alarm")),
                PopupMenuDivider(),
                PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text("Add")
                      ],
                    )),
              ],
              onSelected: (item) => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => _paginas[item])),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.green,
        child: Center(child: Text("Principal")),
      ),
    );
  }
}

class Pag01 extends StatelessWidget {
  const Pag01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        color: Colors.yellowAccent,
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}

class Pag02 extends StatelessWidget {
  const Pag02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alarm"),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text("Alarm"),
        ),
      ),
    );
  }
}

class Pag03 extends StatelessWidget {
  const Pag03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Container(
        color: Colors.yellowAccent,
        child: Center(
          child: Text("Add"),
        ),
      ),
    );
  }
}
