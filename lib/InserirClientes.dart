import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InserirClientesPage extends StatefulWidget {
  const InserirClientesPage({Key? key}) : super(key: key);

  @override
  _InserirClientesPageState createState() => _InserirClientesPageState();
}

class _InserirClientesPageState extends State<InserirClientesPage> {
  var txtNome = TextEditingController();
  var txtcpf = TextEditingController();
  var txttelefone = TextEditingController();
  var txtendereco = TextEditingController();
  var txtcidade = TextEditingController();

  getMedicamento(id) async {
    await FirebaseFirestore.instance
        .collection('clientes')
        .doc(id)
        .get()
        .then((doc) {
      txtNome.text = doc.get('nome');
      txtcpf.text = doc.get('fornecedor');
      txttelefone.text = doc.get('compra');
      txtendereco.text = doc.get('venda');
      txtcidade.text = doc.get('qnt');
    });
  }

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;
    getMedicamento(id);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Inserir Cliente',
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
            child: Text("Favor inserir os dados do novo clientes",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
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
                    hintText: "Insira o nome do cliente",
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
                controller: txtcpf,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "cpf",
                    hintText: "Insira o cpf do cliente",
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
                controller: txttelefone,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Telefone",
                    hintText: "Insira o telefone",
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
                controller: txtendereco,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Endereco",
                    hintText: "Insira o endereco do cliente",
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
                controller: txtcidade,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                    labelText: "Cidade",
                    hintText: "Insira a cidade do cliente",
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
                    FirebaseFirestore.instance.collection('clientes').add({
                      'nome': txtNome.text,
                      'cpf': txtcpf.text,
                      'telefone': txttelefone.text,
                      'endereco': txtendereco.text,
                      'cidade': txtcidade.text
                    });
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Inserido com sucesso.'),
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
                    Navigator.pushNamed(context, '/clientes');
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
