import 'package:flutter/material.dart';
import 'package:project_perpustakaan/screens/details/components/details_screen.dart';

import '../../../constants.dart';

class PopularBook extends StatelessWidget {
  const PopularBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopularBookCard(
              image: "assets/buku1.jpg",
                            press: () {
                Navigator.push(
              context, MaterialPageRoute(builder: (context) => (DetailScreen()),),);
                
              },
              title: "Bintang",
              penulis: "Tere Liye",

              ),
          PopularBookCard(
            image: "assets/buku2.jpg",
                        press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                );
            },
            title: "Matahari",
            penulis: "Tere Liye",

          ),
          PopularBookCard(
            image: "assets/buku3.jpg",
                        press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                );
            },
            title: "Bulan",
            penulis: "Tere Liye",

          ),
          PopularBookCard(
            image: "assets/buku4.jpg",
                        press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                );
            },
            title: "Bumi",
            penulis: "Tere Liye",
          ),
        ],
      ),
    );
  }
}

class PopularBookCard extends StatelessWidget {
  const PopularBookCard({
    Key? key,
    required this.image,
    required this.title,
    required this.penulis,
    required this.press,
  }) : super(key: key);

  final String image, title, penulis;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(
            image, cacheWidth: 150,
            // width: 150,
            // height: 200,
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$penulis",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
