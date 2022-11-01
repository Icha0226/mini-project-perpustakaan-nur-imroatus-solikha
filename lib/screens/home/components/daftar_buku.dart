import 'package:flutter/material.dart';

import '../../../constants.dart';

class DaftarBuku extends StatelessWidget {
  const DaftarBuku({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 25)),
            new Text("Kategori Buku",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            ),
            new Card(
              shadowColor: kPrimaryColor,
              color: const Color(0xFFE7F6F2),
              margin: const EdgeInsets.only(top: 30),
              child: new Column( 
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(left: 50,right: 50,),),
                  new Text("\nTeknologi\n",
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
              ),
              ),
                ],
              ),
              
            ),
            new Card(
              shadowColor: kPrimaryColor,
              color: const Color(0xFFE7F6F2),
              margin: const EdgeInsets.only(top: 15),
              child: new Column( 
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(left: 50,right: 50,),),
                  new Text("\nBisnis\n",
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
              ),
              ),
                ],
              ),
              
            ),
            new Card(
              shadowColor: kPrimaryColor,
              color: const Color(0xFFE7F6F2),
              margin: const EdgeInsets.only(top: 15),
              child: new Column( 
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(left: 50,right: 50,),),
                  new Text("\nSains\n",
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
              ),
              ),
                ],
              ),
              
            ),
            new Card(
              shadowColor: kPrimaryColor,
              color: const Color(0xFFE7F6F2),
              margin: const EdgeInsets.only(top: 15),
              child: new Column( 
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(left: 50,right: 50,),),
                  new Text("\nKesehatan\n",
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
              ),
              ),
                ],
              ),
              
            ),
            new Card(
              shadowColor: kPrimaryColor,
              color: const Color(0xFFE7F6F2),
              margin: const EdgeInsets.only(top: 15),
              child: new Column( 
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(left: 50,right: 50,),),
                  new Text("\nFiksi\n",
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                  
              ),
              ),
                ],
              ),
              
            ),
            new Card(
              shadowColor: kPrimaryColor,
              color: const Color(0xFFE7F6F2),
              margin: const EdgeInsets.only(top: 15),
              child: new Column( 
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(left: 50,right: 50,),),
                  new Text("\nNon-Fiksi\n",
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
              ),
              ),
                ],
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}