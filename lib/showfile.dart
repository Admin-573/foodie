import 'package:flutter/material.dart';

import 'buy.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {

  Map data = {};
  Details(this.data, {super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Want To Buy ?"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 256,
                height: 256,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.data['image']),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.data['name'],
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const Divider(
              height: 4,
              thickness: 4,
              color: Colors.deepOrange,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.data['des'],
                style: const TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> buyit()));
            }, child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.w900),))
          ],
        ),
      ),
    );
  }
}