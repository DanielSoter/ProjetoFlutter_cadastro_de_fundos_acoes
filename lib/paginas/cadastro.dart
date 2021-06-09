import 'package:cadfin_projeto_flutter/Funcoes/Cadastro.funcoes.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  bool _obscurePass;

  @override
  void initState() {
    super.initState();
    _obscurePass = true;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    final double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastre-se"),
        elevation: 0,
      ),
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _controllerNome,
                      validator: (valor) => CadastroFuncao().validarNome(valor),
                      decoration: InputDecoration(
                        hintText: "Nome",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _controllerEmail,
                      validator: (valor) => CadastroFuncao().validarEmail(valor),
                      decoration: InputDecoration(
                        hintText: "E-mail",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _controllerSenha,
                      obscureText: _obscurePass,
                      validator: (valor) => CadastroFuncao().validarSenha(valor),
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
                    )
                  ],
                ),
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
                child: Text(
                  "Cadastrar",
                  style: TextStyle(
                    fontSize: 25,
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                onPressed: () {
                  if(_formKey.currentState.validate()) {
                    print(_controllerNome.text.trim());
                    print(_controllerEmail.text.trim());
                    print(_controllerSenha.text.trim());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
