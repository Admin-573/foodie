import 'package:flutter/material.dart';
import 'package:foodie/foodmenu.dart';
import 'package:foodie/signinform.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String name="";
  String pass="";
  String city="";
  String state="";
  String pincode="";

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
              const SizedBox(height: 25),
              const Image(image: AssetImage('assets/foodie.png'),
              fit: BoxFit.cover,
              width: 256,
              alignment: Alignment.topCenter),

              const Image(image: AssetImage('assets/welcome.png'),
              fit: BoxFit.cover,
              width: 256,),

              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 32),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Create User Name",
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
                      hintText: "Create Strong Password",
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

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 32),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.location_city),
                      hintText: "Enter City Name",
                      labelText: "City Name"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "City Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    city=value;
                    setState(() {});
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 32),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.landscape),
                      hintText: "Enter State Name",
                      labelText: "State Name"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "State Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    state=value;
                    setState(() {});
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 32),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Enter Pincode",
                      labelText: "Pincode"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "Pincode Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    pincode=value;
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
                  child: const Text('SignUp',style: TextStyle(fontSize: 24,
                      fontWeight: FontWeight.w900,
                    fontFamily: 'DancingScript',
                  )
                  )
              ),

              const SizedBox(height: 70),

              const Text('Already A Customer ? ',style: TextStyle(fontWeight: FontWeight.w900,
                  fontFamily: 'DancingScript',
                  color: Colors.deepOrange,
                  fontSize: 36),),

              const SizedBox(height: 25,),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const signin()));
              },
                  child:const Text('SignIn',style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 24,fontWeight: FontWeight.w900,),
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
