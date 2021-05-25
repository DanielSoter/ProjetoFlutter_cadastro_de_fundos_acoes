import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text("O logo vai ficar aqui"),
            ),
            Container(
              padding: EdgeInsets.all(35),
              child: Form(
                key: _formState,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _controllerEmail,
                      decoration: InputDecoration(
                        hintText: "E-mail",
                      ),
                    ),
                    TextFormField(
                      controller: _controllerSenha,
                      decoration: InputDecoration(
                        hintText: "Senha",
                      ),
                    ),
              ],
              ),
              ),
            ),
            Container(
              width: width / 1.2,
              height: 50,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
                ),
              ),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                  Radius.circular(20),
                  ),
                ),
                child: Text("Entrar",
                  style: TextStyle(fontSize: 20,
                    color: Colors.white,
                  ),
              ),
                onPressed: () {
                  print("");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
