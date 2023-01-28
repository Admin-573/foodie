import 'package:flutter/material.dart';

class buyit extends StatefulWidget {

  @override
  State<buyit> createState() => _buyitState();
}

class _buyitState extends State<buyit> {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150),
            Image.network("https://thumbs.dreamstime.com/b/enjoy-your-meal-hand-lettering-quote-isolated-white-background-vector-typography-home-decor-cafe-restaurants-menu-aprons-214613199.jpg",
            fit: BoxFit.cover,
              height: 256,
              width: 512,
              alignment: Alignment.center,
            ),
            Image.network("https://t3.ftcdn.net/jpg/04/14/78/90/360_F_414789044_6xD0f4z9YcHfQimfnighWoUCIqgEJ66G.jpg",
            alignment: Alignment.bottomCenter,)
          ],
        ),
      ),
    );
  }
}
