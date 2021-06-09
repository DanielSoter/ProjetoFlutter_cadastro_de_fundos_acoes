import 'package:cadfin_projeto_flutter/paginas/login.dart';
import 'package:flutter/material.dart';

import 'Rotas/Rotas.dart';
import 'paginas/cadastro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinCad',
      theme: ThemeData(
        primaryColor: Colors.greenAccent[800],
        backgroundColor:  Colors.teal[400],
      ),
      home: LoginPage(),
      routes : {
        AppRotas.CADASTRO : (_) => Cadastro(),
      },
    );
  }
}

