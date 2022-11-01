import 'package:flutter/material.dart';
import 'package:project_perpustakaan/constants.dart';
import 'package:project_perpustakaan/screens/home/components/popular_book.dart';
import 'package:project_perpustakaan/screens/home/components/title_with_view_all_btn.dart';
import 'header_with_searchbox.dart';
import 'mungkin_anda_sukai.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //height dan width layar kita
    Size size = MediaQuery.of(context).size;
    //enable scrolling on small device
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          
          TitleWithViewAllBtn(
            title: "Mungkin anda suka",
            press: () {},
          ),
          MungkinAndaSukai(),

          TitleWithViewAllBtn(title: "Popular", press: () {}),
          // cover 40% total width
          PopularBook(),

          
          SizedBox(
            height: kDefaultPadding,
          ),
          
        ],
      ),
    );
  }
}

