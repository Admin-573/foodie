import 'package:flutter/material.dart';
import 'package:foodie/showfile.dart';

// ignore: camel_case_types
class fooditems extends StatefulWidget {
  const fooditems({Key? key}) : super(key: key);

  @override
  State<fooditems> createState() => _fooditemsState();
}

// ignore: camel_case_types
class _fooditemsState extends State<fooditems> {
  List<Map> data = [

    {
      "name":"Pizza-Rs.299",
      "image":"assets/pizza.jpg",
      "des":"Pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot."
    },
    {
      "name":"Burger-Rs.199",
      "image":"assets/burger.jpg",
      "des":"A Burger is a flat round mass of minced meat or vegetables, which is fried and often eaten in a bread roll."
    },

    {
      "name":"French Fries-Rs.99",
      "image":"assets/fries.jpg",
      "des":"French fries, also called chips, finger chips, fries, or French pommes frites, side dish or snack typically made from deep-fried potatoes that have been cut into various shapes, especially thin strips."
    },
    {
      "name":"HotDog-Rs.249",
      "image":"assets/hotdog.jpg",
      "des":"A hot dog (uncommonly spelled hotdog) is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can refer to the sausage itself. The sausage used is a wiener (Vienna sausage) or a frankfurter (Frankfurter Würstchen, also just called frank)."
    },
    {
      "name":"MilkShake-Rs.149",
      "image":"assets/milkshake.jpg",
      "des":"A milkshake (sometimes simply called a shake) is a sweet beverage made by blending milk, ice cream, and flavorings or sweeteners such as butterscotch, caramel sauce, chocolate syrup, fruit syrup, or whole fruit into a thick, sweet, cold mixture."
    },
    {
      "name":"Cold Drinks-Rs.49",
      "image":"assets/colddrink.jpg",
      "des":"soft drink, any of a class of nonalcoholic beverages, usually but not necessarily carbonated, normally containing a natural or artificial sweetening agent, edible acids, natural or artificial flavours, and sometimes juice."
    },
    {
      "name":"GarlicBread-Rs.199",
      "image":"assets/garlicbread.jpg",
      "des":"Garlic bread (also called garlic toast) consists of bread (usually a baguette or sour dough like a ciabatta), topped with garlic and olive oil or butter and may include additional herbs, such as oregano or chives. It is then either grilled until toasted or baked in a conventional or bread oven."
    },
    {
      "name":"Noodles-Rs.149",
      "image":"assets/noodles.jpg",
      "des":"noodle, a cooked egg-and-flour paste prominent in European and Asian cuisine, generally distinguished from pasta by its elongated ribbonlike form. Noodles are commonly used to add body and flavour to broth soups. They are commonly boiled or sautéed and served with sauces and meats or baked in casseroles."
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Our Hot Items"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Details(data[index]),),);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              data[index]["image"]
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data[index]["name"],style: const TextStyle(fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'DancingScript')),
                    )
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
