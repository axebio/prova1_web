import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        title:Text('Menu',
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
              child: Image.asset('lib/assets/valefarma.jpeg', height: 50),
            ),

            SizedBox(height: 40),

            ListTile(    
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),           
              tileColor: Colors.grey[600],
              leading: Icon(Icons.local_hospital, color: Colors.white, size: 40),
              title: Text('Clientes', textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),              
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/Tela4');
              },
              hoverColor: Colors.grey[800],
            ),
              
            SizedBox(height: 25),
                      
            ListTile(    
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),           
              tileColor: Colors.grey[600],
              leading: Icon(Icons.local_hospital, color: Colors.white, size: 40),
              title: Text('Registrar Venda', textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),              
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/Tela4');
              },
              hoverColor: Colors.grey[800],
            ),
              
            SizedBox(height: 25),
            
            ListTile(    
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),           
              tileColor: Colors.grey[600],
              leading: Icon(Icons.local_hospital, color: Colors.white, size: 40),
              title: Text('Medicamentos', textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),              
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/Tela4');
              },
              hoverColor: Colors.grey[800],
            ),
              
            SizedBox(height: 25),
            
            ListTile(    
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),           
              tileColor: Colors.grey[600],
              leading: Icon(Icons.local_hospital, color: Colors.white, size: 40),
              title: Text('Relatórios', textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),              
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/Tela4');
              },
              hoverColor: Colors.grey[800],
            ),

            SizedBox(height: 25),

            ListTile(    
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),           
              tileColor: Colors.grey[600],
              leading: Icon(Icons.local_hospital, color: Colors.white, size: 40),
              title: Text('Sobre o App', textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),              
              contentPadding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              onTap: () {
                Navigator.pushNamed(context, '/Tela4');
              },
              hoverColor: Colors.grey[800],
            ),
          ],
        ),
      ),
    );
  }
}