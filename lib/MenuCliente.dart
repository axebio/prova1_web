import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCliente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Menu de Clientes',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
          children: [
            Container(
              child: Image.asset('lib/assets/valefarma.png', height: 70),
            ),
            SizedBox(height: 40),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[600],
              leading: Icon(Icons.search, color: Colors.white, size: 40),
              title: Text(
                'Buscar Cliente',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/buscacliente');
              },
              hoverColor: Colors.grey[800],
            ),
            SizedBox(height: 25),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[600],
              leading: Icon(Icons.add, color: Colors.white, size: 40),
              title: Text(
                'Cadastrar Novo Cliente',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/novocliente');
              },
              hoverColor: Colors.grey[800],
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
