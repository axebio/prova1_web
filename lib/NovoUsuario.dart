import 'package:flutter/material.dart';

class NovoUsuario extends StatefulWidget {
  const NovoUsuario({Key? key}) : super(key: key);

  @override
  _NovoUsuarioState createState() => _NovoUsuarioState();
}

class Usuario{
  final String nome;
  final String usuario;
  final String email;
  final String senha;
  Usuario(this.nome,this.usuario,this.email,this.senha);
}

class _NovoUsuarioState extends State<NovoUsuario> {

  var nome = TextEditingController();
  var email = TextEditingController();
  var idade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                child: Icon(Icons.account_circle, size: 70, color: Theme.of(context).primaryColor),
              ),
              
              SizedBox(width: 20),

              Container(
                 child: Image.asset('lib/assets/valefarma.jpeg', height: 70)
              )
            ],
          )
        ],
      )
    );
  }




}