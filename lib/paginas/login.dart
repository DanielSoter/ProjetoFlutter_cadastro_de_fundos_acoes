import 'package:cadfin_projeto_flutter/Funcoes/Login.funcoes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  bool _obscurePass;

  @override
  void initState(){
    super.initState();
    _obscurePass = true;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text(
                "CadFin",
                style: TextStyle(
                  fontSize: 40
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Form(
                key: _formState,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _controllerEmail,
                      validator:(valor)=>
                          LoginFuncao().validarEmail(valor),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        hintText: "E-mail",
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextFormField(
                      controller: _controllerSenha,
                      validator: (valor)=>
                          LoginFuncao().validarSenha(valor),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      obscureText: _obscurePass,
                      decoration: InputDecoration(
                        hintText: "Senha",
                        suffixIcon: IconButton(
                          icon: _obscurePass
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          iconSize: 30,
                          onPressed: () =>
                            setState(() => _obscurePass = !_obscurePass),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
              ),
              ),
            ),
          Column(children: [
            Container(
              width: width / 1.2,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
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
                  style: TextStyle(fontSize: 25,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: () {
                  if(_formState.currentState.validate()){
                    print(_controllerEmail.text.trim());
                    print(_controllerSenha.text.trim());
                  }
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              child: Text(
                "Primeira vez por aqui?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            Container(
              width: width / 1.2,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
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
                child: Text("Cadastre-se",
                  style: TextStyle(fontSize: 25,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: () {

                },
              ),
            ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}
