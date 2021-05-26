class LoginFuncao{
  String validarEmail(String valor){
    String p =
        r'([a-z0-9] [- A-z0-9_ +.] [a-z0-9]) @ ([a-z0-9] [-. a-z0-9] [um-z0 -9] (com | net) |. (. [0-9] {1,3} {3} [0-9] {1,3}))';
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
}