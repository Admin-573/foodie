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
        backgroundColor: Colors.deepOrange[100],
        title: const Text("Want To Buy ?",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w900),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Divider(height: 25,
            thickness: 10,
            color: Colors.redAccent[200],),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.data['name'],
                style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 30),
              ),
            ),

            Divider(height: 25,
              thickness: 10,
              color: Colors.redAccent[200],),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 512,
                height: 256,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.data['image']),
                      fit: BoxFit.fill),
                ),
              ),
            ),

            Divider(
              height: 25,
              thickness: 10,
              color: Colors.deepOrange[300],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.data['des'],
                style: const TextStyle(fontSize: 24,fontFamily: 'DancingScript',fontWeight: FontWeight.w900),
              ),
            ),

            Divider(height: 25,
            thickness: 10,
            color: Colors.deepOrange[300],
            ),

            const SizedBox(height: 25),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> buyit()));
            }, child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.w900),)),

            const SizedBox(height: 35)

          ],
        ),
      ),
    );
  }
}