import 'package:flutter/material.dart';

class Medicamentos extends StatefulWidget {
  const Medicamentos({Key? key}) : super(key: key);

  @override
  _MedicamentosPageState createState() => _MedicamentosPageState();
}

class _MedicamentosPageState extends State<Medicamentos> {
  var lista = [];
  var txtMed = TextEditingController();

  @override
  void initState() {
    lista.add("Antisséptico");
    lista.add("Dorflex");
    lista.add("Dorflex uno");
    lista.add("Dramin");
    lista.add("Eno");
    lista.add("Insulina BedTime");
    lista.add("Mertiolate");
    lista.add("Metformina");
    lista.add("Miosan");
    lista.add("Novalgina");
    lista.add("Omeprazol");
    lista.add("Prednizona");
    lista.add("Propomax");
    lista.add("Ranitidina");
    lista.add("Salompas");
    lista.add("Sertralina");
    lista.add("Sorine");
    lista.add("Soro fisiológico");
    super.initState();
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
            }
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.grey.shade200,       
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              shadowColor: Colors.grey.shade200,
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Navigator.pushNamed(context, '/editarmedicamento');
                  },
                ),
                title: Text(
                  lista[index],
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text(
                    'Em estoque'),
                trailing: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(() {
                      lista.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Medicamento removido com sucesso'),
                        duration: Duration(seconds: 2),
                      ));
                    });
                  },
                ),
                hoverColor: Colors.grey.shade100,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Medicamento ${lista[index]} em estoque: 25 unidades'),
                    duration: Duration(seconds: 2),
                  ));
                },
              ),
            );
          },
        ),
      ),

      //
      // ADICIONAR tarefas
      //
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade800,
        child: Icon(Icons.add),
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                    'Adicionar Medicamento',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  content: TextField(
                    controller: txtMed,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  
                  actions: [
                    TextButton(
                      child: Text('ok'),
                      onPressed: () {
                        setState(() {
                          var msg = '';
                          if (txtMed.text.isNotEmpty) {
                            lista.add(txtMed.text);
                            txtMed.clear();
                            msg = 'Medicamento adicionado com sucesso.';
                          } else {
                            msg = 'O nome do medicamento não pode estar vazio.';
                          }

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(msg),
                            duration: Duration(seconds: 2),
                          ));
                        });

                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: Text('cancelar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              }
            );
        },
      ),
    );
  }
}
