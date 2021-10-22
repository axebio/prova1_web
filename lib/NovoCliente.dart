import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NovoCliente extends StatefulWidget {
  const NovoCliente({Key? key}) : super(key: key);

  @override
  _NovoClienteState createState() => _NovoClienteState();
}

class Usuario {
  final String nome;
  final String usuario;
  final String email;
  final String senha;
  final String testeSenha;
  Usuario(this.nome, this.usuario, this.email, this.senha, this.testeSenha);
}

class _NovoClienteState extends State<NovoCliente> {
  // ignore: avoid_init_to_null
  var estado = null;
  var nome = TextEditingController();
  var usuario = TextEditingController();
  var email = TextEditingController();
  var senha = TextEditingController();
  var testeSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Cadastro de Cliente',
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
                    child: Icon(Icons.account_circle,
                        size: 100, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      child:
                          Image.asset('lib/assets/valefarma.png', height: 70))
                ],
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.90,
                height: 60,
                padding:
                    EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
                child: TextFormField(
                    controller: nome,
                    //keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                        labelText: "Nome",
                        hintText: "Digite o nome do cliente",
                        labelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.90,
                height: 60,
                padding:
                    EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
                child: TextFormField(
                    controller: usuario,
                    //keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                        labelText: "Endereço",
                        hintText:
                            "Digite a rua, número e complemento do cliente",
                        labelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: 60,
                    padding:
                        EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
                    child: TextFormField(
                        controller: email,
                        //keyboardType: TextInputType.text,
                        style: Theme.of(context).textTheme.headline2,
                        decoration: InputDecoration(
                            labelText: "Cidade",
                            hintText: "Digite a cidade do cliente",
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.025),
                  Text('Estado:',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22,
                      )),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.025),
                  Text('SP',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  Radio(
                    value: "SP",
                    groupValue: estado,
                    onChanged: (valor) {
                      setState(() {
                        estado = valor;
                      });
                    },
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.0125),
                  Text('MG',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Radio(
                    value: "MG",
                    groupValue: estado,
                    onChanged: (valor) {
                      setState(() {
                        estado = valor;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.90,
                height: 60,
                padding:
                    EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
                child: TextFormField(
                    controller: senha,
                    //keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Insira o email do cliente",
                        labelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.90,
                height: 60,
                padding:
                    EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
                child: TextFormField(
                    controller: senha,
                    //keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Telefone",
                        hintText: "(XX) XXXX-XXXX",
                        labelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Registro de Clientes"),
                            content: Text("Cliente Registrado com Sucesso!"),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      label: Text(
                        'Registrar',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/menucliente'); //
                      },
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      label: Text(
                        'Cancelar',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
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

// Widget _abrirDialogo(BuildContext context) {
//   showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//             title: Text("Titulo do dialogo"),
//             content: Text("Corpo do dialogo")
//             actions: <Widget>[
//               ElevatedButton(onPressed: (){

//               },
//               child: Text('ok'),
//               ),
//             ],
//       ),
//   );
// }

// //         return Container(
// //           child: AlertDialog(
// //             title: Text("Titulo do dialogo"),
// //             content: Column(
// //               children: <Widget>[
// //                 Text("TExto do dialogo"),
// //                 MaterialButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   color: Colors.black,
//                   child: Text("Fechar"),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//   );
// }
