import 'package:flutter/material.dart';

import 'buy.dart';

class details extends StatefulWidget {

  Map data = {};
  details(this.data);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Want To Buy ?"),
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
                style: TextStyle(fontSize: 30),
              ),
            ),
            Divider(
              height: 4,
              thickness: 4,
              color: Colors.deepOrange,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.data['des'],
                style: TextStyle(fontSize: 18),
              ),
            ),

            SizedBox(height: 25),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> buyit()));
            }, child: Text('Buy',style: TextStyle(fontWeight: FontWeight.w900),))
          ],
        ),
      ),
    );
  }
}