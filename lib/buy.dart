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
          children: const [
            SizedBox(height: 70),

            Image(image: AssetImage('assets/pay.jpeg'),
            fit: BoxFit.cover,
            width: 512,
            alignment: Alignment.topCenter,),

            Image(image: AssetImage('assets/orderd.jpeg'),
            fit: BoxFit.cover,
              width: 256,
              alignment: Alignment.bottomCenter,
            ),

            Image(image: AssetImage('assets/done.jpeg'),
            alignment: Alignment.center,)
          ],
        ),
      ),
    );
  }
}
