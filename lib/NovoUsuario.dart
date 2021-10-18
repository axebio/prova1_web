import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  var usuario = TextEditingController();
  var email = TextEditingController();
  var senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Container(
                child: Icon(Icons.account_circle, size: 70, color: Theme.of(context).primaryColor),
              ),
              SizedBox(width: 80),
              Container(
                 child: Image.asset('lib/assets/valefarma.jpeg', height: 70)
              )
            ],
          ),
          
          SizedBox(height: 40),
          
          Container(   
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width*0.90, 
            height: 60,
            padding: EdgeInsets.only(
              top:2, left: 16, right: 16, bottom:2
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.headline2,
              decoration: InputDecoration(
                labelText: "Nome Completo",
                hintText: "Digite seu Nome completo",
                labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              )
            ),
          ),

          SizedBox(height: 15),
          Container(   
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width*0.90, 
            height: 60,
            padding: EdgeInsets.only(
              top:2, left: 16, right: 16, bottom:2
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.headline2,
              decoration: InputDecoration(
                labelText: "Usuário",
                hintText: "Digite o Nome de usuário",
                labelStyle: TextStyle(color:Theme.of(context).primaryColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              )
            ),
          ),

          SizedBox(height: 15),
          Container(   
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width*0.90, 
            height: 60,
            padding: EdgeInsets.only(
              top:2, left: 16, right: 16, bottom:2
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.headline2,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Digite seu Email",
                labelStyle: TextStyle(color:Theme.of(context).primaryColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              )
            ),
          ),

          SizedBox(height: 15),
          Container(   
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width*0.90, 
            height: 60,
            padding: EdgeInsets.only(
              top:2, left: 16, right: 16, bottom:2
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.headline2,
              decoration: InputDecoration(
                labelText: "Senha",
                hintText: "Digite a senha",
                labelStyle: TextStyle(color:Theme.of(context).primaryColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              )
            ),
          ),

          SizedBox(height: 15),
          Container(   
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width*0.90, 
            height: 60,
            padding: EdgeInsets.only(
              top:2, left: 16, right: 16, bottom:2
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.headline2,
              decoration: InputDecoration(
                labelText: "Confirmar senha",
                hintText: "Confirme a senha",
                labelStyle: TextStyle(color:Theme.of(context).primaryColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              )
            ),
          ),

          SizedBox(height: 30),
              Container(   
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () { Navigator.pushNamed(context, '/Tela2');},
                  child: Text('Entrar',
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
                                   
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      padding:EdgeInsets.symmetric(horizontal:30,vertical:20)
                  ),
                ),
              ),
        ],
      )
    );
  }

  




}