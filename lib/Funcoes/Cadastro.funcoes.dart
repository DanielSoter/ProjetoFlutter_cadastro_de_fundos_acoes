class CadastroFuncao{
  String validarEmail(String valor){
    String p =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(p);
    if(valor.isEmpty){
      return "Informe um e-mail!";
    }else if(regExp.hasMatch(valor)){
      return null;
    }else{
      return "Informe um e-mail válido!";
    }
  }
  String validarSenha(String valor){
    if(valor.isEmpty){
      return "Informe a senha!";
    }else{
      return null;
    }
  }

  String validarNome(String valor){
    if(valor.isEmpty){
      return "Informe seu nome!";
    }else{
      return null;
    }

    }
  }
