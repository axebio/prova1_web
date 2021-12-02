import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InserirMedicamentoPage extends StatefulWidget {
  const InserirMedicamentoPage({Key? key}) : super(key: key);

  @override
  _InserirMedicamentoPageState createState() => _InserirMedicamentoPageState();
}

class _InserirMedicamentoPageState extends State<InserirMedicamentoPage> {
  var lista = [];
  var txtNome = TextEditingController();
  var txtFornecedor = TextEditingController();
  var txtCompra = TextEditingController();
  var txtVenda = TextEditingController();
  var txtQnt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Inserir Medicamento',
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
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.1,
              padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
              child: Text("Favor inserir os dados do novo medicamento")),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
            child: TextFormField(
                controller: txtNome,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Nome",
                    hintText: "Insira o nome do medicamento",
                    labelStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
            child: TextFormField(
                controller: txtFornecedor,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Fornecedor",
                    hintText: "Insira o fornecedor do medicamento",
                    labelStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
            child: TextFormField(
                controller: txtCompra,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Valor de compra",
                    hintText: "Insira o valor de compra do medicamento",
                    labelStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
            child: TextFormField(
                controller: txtVenda,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Valor de venda",
                    hintText: "Insira o valor de venda do medicamento",
                    labelStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 2),
            child: TextFormField(
                controller: txtQnt,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Quantidade",
                    hintText: "Insira a quantidade comprada do medicamento",
                    labelStyle: TextStyle(color: Colors.black87),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    FirebaseFirestore.instance.collection('medicamentos').add({
                      'nome': txtNome,
                      'fornecedor': txtFornecedor,
                      'compra': txtCompra,
                      'venda': txtVenda,
                      'qnt': txtQnt
                    });
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('operacao realizada com sucesso.'),
                        duration: Duration(seconds: 2)));
                  },
                  child: Text(
                    'INSERIR',
                    style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(25, 30, 25, 30),
                    primary: Colors.grey.shade200,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Tela2');
                  },
                  child: Text(
                    'CANCELAR',
                    style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(25, 30, 25, 30),
                    primary: Colors.grey.shade200,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
