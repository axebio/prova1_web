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
  final String testeSenha;
  Usuario(this.nome,this.usuario,this.email,this.senha,this.testeSenha);
}

class _NovoUsuarioState extends State<NovoUsuario> {

  var nome = TextEditingController();
  var usuario = TextEditingController();
  var email = TextEditingController();
  var senha = TextEditingController();
  var testeSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: true,
        title:Text('Cadastro de Usuário',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,       
      ),

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 30),
                  Container(
                    child: Icon(Icons.account_circle, size: 70, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(width: 80),
                  Container(
                    child: Image.asset('lib/assets/valefarma.png', height: 70)
                  )
                ],
              ),
              
              SizedBox(height: 30),
              
              Container(   
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.90, 
                height: 60,
                padding: EdgeInsets.only(
                  top:2, left: 16, right: 16, bottom:2
                ),
                child: TextFormField(
                  controller: nome,
                  //keyboardType: TextInputType.text,
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

              SizedBox(height: 10),
              Container(   
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.90, 
                height: 60,
                padding: EdgeInsets.only(
                  top:2, left: 16, right: 16, bottom:2
                ),
                child: TextFormField(
                  controller: usuario,
                  //keyboardType: TextInputType.text,
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

              SizedBox(height: 10),
              Container(   
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.90, 
                height: 60,
                padding: EdgeInsets.only(
                  top:2, left: 16, right: 16, bottom:2
                ),
                child: TextFormField(
                  controller: email,
                  //keyboardType: TextInputType.text,
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

              SizedBox(height: 10),
              Container(   
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.90, 
                height: 60,
                padding: EdgeInsets.only(
                  top:2, left: 16, right: 16, bottom:2
                ),
                child: TextFormField(
                  controller: senha,
                  //keyboardType: TextInputType.text,
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

              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.90, 
                height: 60,
                padding: EdgeInsets.only(
                  top:2, left: 16, right: 16, bottom:2
                ),
                child: TextFormField(
                  controller: testeSenha,
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return 'preencha novamente a senha';
                    }
                    else if(value != senha.text){
                      return 'Senhas não batem';  
                    }
                    return null;              
                  },
                  //keyboardType: TextInputType.text,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(   
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton.icon(
                      onPressed: () { Navigator.pushNamed(context, '/menu');
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('As senhas não batem')),
                          );
                        }
                      },
                      icon: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      label: Text('Registrar',
                      style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),                                
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding:EdgeInsets.fromLTRB(20, 20, 30, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 60),
                  Container(   
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton.icon(
                    onPressed: () { Navigator.pushNamed(context, '/menu');},
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    label: Text('Cancelar',
                    style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),                                
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding:EdgeInsets.fromLTRB(20, 20, 30, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
