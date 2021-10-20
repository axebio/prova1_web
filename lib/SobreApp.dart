import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SobreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: true,
        title:Text('Sobre o Aplicativo',
          style: Theme.of(context).textTheme.headline1,
          ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      
      body: 
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.90,
              margin: EdgeInsets.fromLTRB(20,20,20,20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
              color: Colors.grey[800],
              border: Border.all(
                color: Colors.black, width: 1
                ),
              borderRadius: BorderRadius.all( 
                Radius.circular(10)
                ),
              ),
              child: Column(
              children: [
                Text('O objetivo desse aplicativo é atuar como um sistema ERP, para ajudar a Vale Farma, uma empresa que
                trabalha como distribuidora de produtos farmacêuticos para farmácia, principalmente as de pequeno
                porte, em cidades menores, atingindo a capilaridade que empresas maiores não se dão o trabalho de
                cobrir.',

                
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.justify),  
                ]
              )
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.90,
              margin: EdgeInsets.fromLTRB(20,20,20,20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
              color: Colors.grey[800],
              border: Border.all(
                color: Colors.black, width: 1
              ),
              borderRadius: BorderRadius.all( 
                Radius.circular(10)
              ),
            ),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Container(
                        width: 170,
                        height: 190,
                        margin: EdgeInsets.fromLTRB(10, 10,10,10), 
                        child: Column(
                          children:[
                            Container(
                              child : Image.asset('lib/assets/3x4master.png'),
                            ),
                            Container(
                              padding: EdgeInsets.only(top:5,),
                              child : Text('Rafael Rossi Valentim', style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
                              textAlign: TextAlign.justify),
                            ),
                          ],
                        ),
                      ), 
                      Container(
                        width: 170,
                        height: 190,
                        margin: EdgeInsets.fromLTRB(10, 10,10,10), 
                        child: Column(
                          children:[
                            Container(
                              child : Image.asset('lib/assets/fotomaster.png'),
                            ),                           
                            Container(
                              padding: EdgeInsets.only(top:5,),
                              child : Text('Danilo Jordão Xavier', style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
                              textAlign: TextAlign.justify),
                            ),
                          ],
                        ),
                      ), 
                    ],                   
                  ),
                  
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.90,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10,10,10,10),
                    child: Text('Somos alunos do quarto semestre do curso de Análise e Desenvolvimento de Sistemas da Fatec – Ribeirão Preto.',
                    style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.justify),
                  ),
                ]
              )
            ),  
          ],
        ),
      ),
    );
  }
}