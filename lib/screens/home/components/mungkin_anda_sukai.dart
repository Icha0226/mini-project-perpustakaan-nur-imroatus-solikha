import 'package:flutter/material.dart';
import 'package:project_perpustakaan/screens/details/components/details_screen.dart';

import '../../../constants.dart';

class MungkinAndaSukai extends StatelessWidget {
  const MungkinAndaSukai({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MungkinAndaSukaCard(image: "assets/flyer1.jpeg",
          press: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => (DetailScreen()),
              ),
              );
          },
          ),
          MungkinAndaSukaCard(image: "assets/flyer2.jpeg",
          press: (){
              Navigator.push(
              context, MaterialPageRoute(builder: (context) => (DetailScreen()),
              ),
              );
          },
          ),
          MungkinAndaSukaCard(image: "assets/flyer3.jpeg",
          press: (){
              Navigator.push(
              context, MaterialPageRoute(builder: (context) => (DetailScreen()),
              ),
              );
          },
          ),
        ],
      ),
    );
  }
}

class MungkinAndaSukaCard extends StatelessWidget {
  const MungkinAndaSukaCard({
    Key? key, required this.image, required this.press,

  }) : super(key: key);

  final String image;
  final VoidCallback press;
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding,),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
