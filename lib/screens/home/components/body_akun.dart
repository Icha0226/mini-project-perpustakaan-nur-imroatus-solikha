import 'package:flutter/material.dart';
import 'package:project_perpustakaan/constants.dart';
import 'package:project_perpustakaan/screens/home/components/login_screen.dart';
import 'package:project_perpustakaan/screens/home/components/profile_picture.dart';

class BodyAkun extends StatelessWidget {
  const BodyAkun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 20),),
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: "assets/akun.png", 
          text: "My Account",
          press: () {},
          ),
          ProfileMenu(
          icon: "assets/exit.png", 
          text: "Log Out",
          press: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => (LoginScreen()),),);
          },
          ),

      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key, required this.text, required this.icon, required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20, 
        vertical: 10,
        ),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
        color: Color.fromARGB(255, 231, 231, 231),
        onPressed: press,
        child: Row(
          children: <Widget>[
            Image.asset(icon, width: 17, height: 17, color: kPrimaryColor,),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Text(text,
                style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
