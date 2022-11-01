import 'package:flutter/material.dart';
import 'package:project_perpustakaan/constants.dart';
import 'package:project_perpustakaan/screens/home/components/body.dart';

class DaftarPeminjamanScreen extends StatefulWidget {
  const DaftarPeminjamanScreen({Key? key}) : super(key: key);

  @override
  State<DaftarPeminjamanScreen> createState() => _DaftarPeminjamanScreenState();
}

class _DaftarPeminjamanScreenState extends State<DaftarPeminjamanScreen> {
  int currentIndex = 0;

  List<String> namaBuku = ["Selena", "Komet", "Bintang", "Matahari", "Bulan"];
  List<String> tanggalPinjam = [
    "8/9/2022",
    "8/9/2022",
    "8/9/2022",
    "22/8/2022",
    "16/8/2022"
  ];
  List<String> tanggalKembali = ["14/9/2022", "14/9/2022", "14/9/2022", "28/8/2022", "22/8/2022"];
  List<String> status = [
    "Menunggu proses",
    "Disetujui",
    "Disetujui",
    "Telah dikembalikan",
    "Telah dikembalikan"
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      new Text("Peminjaman Anda",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
      ),
      ),
      
      Container(
        padding: EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: namaBuku.length,
          itemBuilder: (context, idx) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(namaBuku[idx][0]),
              ),
              title: Text(namaBuku[idx], style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Tanggal pinjam: " +
                  tanggalPinjam[idx] +
                  "\nTanggal kembali: " +
                  tanggalKembali[idx] +
                  "\n" +
                  status[idx], style: TextStyle(color: kTextColor),),
            );
          },
        ),
      ),
      ],
      
    );
  }
}
