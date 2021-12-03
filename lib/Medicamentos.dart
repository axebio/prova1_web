import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Medicamentos extends StatefulWidget {
  const Medicamentos({Key? key}) : super(key: key);

  @override
  _MedicamentosPageState createState() => _MedicamentosPageState();
}

class _MedicamentosPageState extends State<Medicamentos> {
  late CollectionReference medicamentos;

  @override
  void initState() {
    super.initState();
    medicamentos = FirebaseFirestore.instance.collection('medicamentos');
  }

  Widget listaMedicamentos(medicamento) {
    String nome = medicamento.data()['nome'];
    String fornecedor = medicamento.data()['fornecedor'];
    String compra = medicamento.data()['compra'];
    String venda = medicamento.data()['venda'];
    String qnt = medicamento.data()['qnt'];
    return ListTile(
      leading: IconButton(
        icon: Icon(Icons.edit),
        onPressed: () {
          Navigator.pushNamed(context, '/inserirmedicamento',
              arguments: medicamento.id);
        },
      ),
      title: Text(
        nome,
        style: TextStyle(fontSize: 22),
      ),
      subtitle: Text('Em estoque'),
      trailing: IconButton(
        icon: Icon(Icons.delete_outline),
        onPressed: () {
          medicamentos.doc(medicamento.id).delete();
        },
      ),
      hoverColor: Colors.grey.shade100,
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('''$nome: 
                        Fabricante: $fornecedor
                        Preco de Compra: $compra
                        Preco de Venda: $venda
                        estoque: $qnt'''),
          duration: Duration(seconds: 5),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Medicamentos',
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
          stream: medicamentos.snapshots(),
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
                      return listaMedicamentos(dados.docs[index]);
                    });
            }
          }),
      backgroundColor: Colors.grey.shade200,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade800,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/inserirmedicamento');
        },
      ),
    );
  }
}
