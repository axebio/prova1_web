import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditarMedicamento extends StatefulWidget {
  const EditarMedicamento({Key? key}) : super(key: key);

  @override
  _EditarMedicamentoState createState() => _EditarMedicamentoState();
}

class Usuario {
  final String estoque;
  final String laboratorio;
  final String fornecedor;
  final double precoCompra;
  final double precoVenda;
  Usuario(this.estoque, this.laboratorio, this.fornecedor, this.precoCompra,
      this.precoVenda);
}

class _EditarMedicamentoState extends State<EditarMedicamento> {
  var estoque = TextEditingController();
  var laboratorio = TextEditingController();
  var fornecedor = TextEditingController();
  var precoCompra = TextEditingController();
  var precoVenda = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Cadastro de Medicamento ',
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.logout,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }),
        ],
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
                    child: Icon(Icons.medication,
                        size: 70, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(width: 80),
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
                    controller: estoque,
                    //keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                        labelText: "Estoque",
                        hintText: "Informe quantidade em estoque",
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
                    controller: laboratorio,
                    //keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                        labelText: "Laboratório",
                        hintText: "Informe o Laboratório fabricante",
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
                    controller: fornecedor,
                    //keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                        labelText: "Fornecedor",
                        hintText: "Informe o Fornecedor",
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
                    controller: precoCompra,
                    //keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                        labelText: "Preço de Compra",
                        hintText: "Informe o preço de aquisição",
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
                    controller: precoVenda,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'preencha novamente a senha';
                      } else if (value == precoCompra.text) {
                        return 'O preço de venda deve ser maior!';
                      }
                      return null;
                    },
                    //keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                        labelText: "Preço de Venda",
                        hintText: "Informe o preço de venda",
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
                        Navigator.pushNamed(context, '/medicamentos');
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('As senhas não batem')),
                          );
                        }
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
                        Navigator.pushNamed(context, '/menu');
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
