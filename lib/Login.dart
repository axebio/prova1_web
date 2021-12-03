import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key : key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          title: Text(
            'VALEFARMA',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            // Theme.of(context).textTheme.headline1,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/Tela3');
              },
              child: Image.asset('lib/assets/diamante.png', height: 70)),
          centerTitle: true,
          // Icon(Icons.info, size: 40)),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(children: [
          SizedBox(height: 30),
          Container(
            child: Icon(Icons.supervisor_account,
                size: 120, color: Theme.of(context).primaryColor),
            alignment: Alignment.center,
          ),

          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
            child: TextFormField(
                controller: txtEmail,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Digite seu nome Email",
                    labelStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),

          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
            child: TextFormField(
                obscureText: true,
                controller: txtSenha,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Senha",
                    hintText: "Entre sua senha",
                    labelStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),

          SizedBox(height: 20),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton.icon(
              onPressed: () {
                setState(() {
                    isLoading = true;
                  });
                  login(txtEmail.text, txtSenha.text);
              },
              icon: Icon(
                Icons.login,
                color: Colors.white,
                size: 24.0,
              ),
              label: Text(
                'Entrar',
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade800,
                padding: EdgeInsets.fromLTRB(60, 30, 60, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          //Ainda não foram craidas as telas de navegacao para o botoes:
          //Esqueceu a senha?
          //Criar uma conta

          SizedBox(height: 20),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Tela2');
              },
              child: Text(
                'RECUPERAR A SENHA',
                style: GoogleFonts.montserrat(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(25, 30, 25, 30),
                primary: Colors.grey.shade200,
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/novousuario');
              },
              child: Text(
                'CADASTRE-SE',
                style: GoogleFonts.montserrat(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[100],
              ),
            ),
          ),
        ]));
  }

  void login(email, senha) {
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: senha).then((value) {

      Navigator.pushNamed(context, '/menu');

    }).catchError((erro){

      var mensagem = '';
      if (erro.code == 'user-not-found'){
        mensagem = 'ERRO: Usuário não encontrado';
      }else if (erro.code == 'wrong-password'){
        mensagem = 'ERRO: Senha incorreta';
      }else if ( erro.code == 'invalid-email'){
        mensagem = 'ERRO: Email inválido';
      }else{
        mensagem = erro.message;
      }

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(mensagem),
            duration: const Duration(seconds:2)
          )
      );
    });
  }
}
