import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  _ClientesPageState createState() => _ClientesPageState();
}

class _ClientesPageState extends State<Clientes> {
  late CollectionReference clientes;

  @override
  void initState() {
    super.initState();
    clientes = FirebaseFirestore.instance.collection('clientes');
  }

  Widget listaClientes(medicamento) {
    String nome = medicamento.data()['nome'];
    String cpf = medicamento.data()['cpf'];
    String telefone = medicamento.data()['telefone'];
    String endereco = medicamento.data()['endereco'];
    String cidade = medicamento.data()['cidade'];
    return ListTile(
      leading: IconButton(
        icon: Icon(Icons.edit),
        onPressed: () {
          Navigator.pushNamed(context, '/inserirclientes',
              arguments: clientes.id);
        },
      ),
      title: Text(
        nome,
        style: TextStyle(fontSize: 22),
      ),
      subtitle: Text(''),
      trailing: IconButton(
        icon: Icon(Icons.delete_outline),
        onPressed: () {
          clientes.doc(medicamento.id).delete();
        },
      ),
      hoverColor: Colors.grey.shade100,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Clientes',
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
      body: StreamBuilder<QuerySnapshot>(
          stream: clientes.snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                    child: Text("Impossível acessar o banco de dados."));
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                final dados = snapshot.requireData;
                return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      return listaClientes(dados.docs[index]);
                    });
            }
          }),
      backgroundColor: Colors.grey.shade200,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade800,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/inserirclientes');
        },
      ),
    );
  }
}
