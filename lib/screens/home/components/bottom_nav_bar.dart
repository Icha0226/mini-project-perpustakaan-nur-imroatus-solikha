import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:project_perpustakaan/screens/home/components/akun.dart';
import 'package:project_perpustakaan/screens/home/components/body.dart';
import 'package:project_perpustakaan/screens/home/components/daftar_buku.dart';
import 'package:project_perpustakaan/screens/home/components/daftar_peminjaman.dart';
import 'package:project_perpustakaan/screens/home/components/home_screen.dart';
import '../../../constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List <Widget> widgets = [
      Body(),
      DaftarBuku(),
      DaftarPeminjamanScreen(),
      AkunScreen(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: kPrimaryColor,
          items: [
            TabItem(icon: Image.asset("assets/home.png"), title: 'Home'),
            TabItem(icon: Image.asset("assets/daftarBuku.png"), title: 'Daftar Buku'),
            TabItem(icon: Image.asset("assets/peminjaman.png"), title: 'Peminjaman'),
            TabItem(icon: Image.asset("assets/akun.png"), title: 'Akun'),
          ],
          initialActiveIndex: 0,
          onTap: (int i) {
            setState(() {
              currentIndex = i;
            });
          }),
    );
  }
}
