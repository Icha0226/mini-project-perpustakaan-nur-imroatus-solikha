import "package:flutter/material.dart";
import 'package:project_perpustakaan/screens/home/components/body.dart';
import 'package:project_perpustakaan/screens/home/components/body_akun.dart';

class AkunScreen extends StatelessWidget {
  const AkunScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: BodyAkun()),
    );
    
  }
}