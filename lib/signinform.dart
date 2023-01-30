
import 'package:flutter/material.dart';
import 'package:foodie/main.dart';

import 'foodmenu.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {

  String name="";
  String pass="";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Material(
        color: Colors.deepOrange[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Image(image: AssetImage('assets/signin.png'),
                  fit: BoxFit.cover,
                  width: 512,
                  alignment: Alignment.topCenter),

              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 32),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Enter User Name",
                      labelText: "UserName"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "UserName Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    name=value;
                    setState(() {});
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 32),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Enter Password",
                      labelText: "Password"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "Password Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    pass=value;
                    setState(() {});
                  },
                ),
              ),


              const SizedBox(height: 30),

              ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const fooditems()));
                }
              },
                  child: const Text('SignIn',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900)
                  )
              ),

              const SizedBox(height: 70),

              const Text('New Customer ?',style: TextStyle(fontWeight: FontWeight.w900,
                  color: Colors.deepOrange,
                  fontSize: 28),),

              const SizedBox(height: 25,),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
              },
                child:const Text('SignUp',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w900,),
                ),
              ),

              const SizedBox(height: 50)

            ],
          ),
        ),
      ),
    );
  }
}
