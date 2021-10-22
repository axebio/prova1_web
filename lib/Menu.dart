import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Menu',
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
        padding: EdgeInsets.all(40),
        child: ListView(
          children: [
            Container(
              child: Image.asset('lib/assets/valefarma.png', height: 50),
            ),
            SizedBox(height: 40),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[600],
              leading:
                  Icon(Icons.supervisor_account, color: Colors.white, size: 40),
              title: Text(
                'Clientes',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/menucliente');
              },
              hoverColor: Colors.grey[800],
            ),
            SizedBox(height: 25),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[600],
              leading:
                  Icon(Icons.point_of_sale, color: Colors.white, size: 40),
              title: Text(
                'Registrar Venda',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/registrovenda');
              },
              hoverColor: Colors.grey[800],
            ),
            SizedBox(height: 25),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[600],
              leading:
                  Icon(Icons.medication, color: Colors.white, size: 40),
              title: Text(
                'Medicamentos',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/medicamentos');
              },
              hoverColor: Colors.grey[800],
            ),
            SizedBox(height: 25),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[600],
              leading:
                  Icon(Icons.document_scanner, color: Colors.white, size: 40),
              title: Text(
                'Relatórios',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '');
              },
              hoverColor: Colors.grey[800],
            ),
            SizedBox(height: 25),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey[600],
              leading:
                  Icon(Icons.info, color: Colors.white, size: 40),
              title: Text(
                'Sobre o App',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/sobreapp');
              },
              hoverColor: Colors.grey[800],
            ),
          ],
        ),
      ),
    );
  }
}
