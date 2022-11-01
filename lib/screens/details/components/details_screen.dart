import 'package:flutter/material.dart';
import 'package:project_perpustakaan/constants.dart';
import 'package:project_perpustakaan/screens/home/components/daftar_peminjaman.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.only(top: 30,bottom: 50,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.chevron_left_rounded, size: 30,)),
          ],
        ),
      );
    }
    Widget bookImage(){
        return Container(
          height: 267,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/buku4.jpg"),
              ),

          ),
        );
      }

      Widget description(){
        return Container(
          margin: EdgeInsets.only(top: 30,),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30),),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bumi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                        ),
                        Text("Tere Liye",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Stok Buku: 5",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                ],
              ),
              SizedBox(height: 30,),
              Text("Sinopsis",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
              SizedBox(height: 6,),
              Text("Raib, seorang gadis berumur 15 tahun. Ia sama seperti remaja lainya. Kecuali satu hal,Sesuatu yang ia simpan sendiri sejak kecil.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              ),
              Text("Baca selengkapnya.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
              Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              child: TextButton(
            onPressed: (){}, 
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
              ),
            child: Text("Pinjam Buku",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15,
            ),
            ),
            ),
        ),
            ],
          ),
        );
        
      }
    return Material(
      child:Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset("assets/buku4.jpg",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          ),
          ListView(
          children: [
            Column(
              children: [
                header(),
                bookImage(),
                description(),
              ],
            ),
          ],
        ),
        ],
        
      ),
    ),
    );
  }
}