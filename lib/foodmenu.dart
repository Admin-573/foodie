import 'package:flutter/material.dart';
import 'package:foodie/showfile.dart';

class fooditems extends StatefulWidget {
  fooditems({Key? key}) : super(key: key);

  @override
  State<fooditems> createState() => _fooditemsState();
}

class _fooditemsState extends State<fooditems> {
  List<Map> data = [

    {
      "name":"Pizza-Rs.299",
      "image":"https://img.zoo.media/cache/mod_bt_contentslider/acc437797968b7475dce84d0bf838ae8-220c08548cac211cc7db219bb52f46cf_XL.jpg",
      "des":"Pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot."
    },
    {
      "name":"Burger-Rs.199",
      "image":"https://b.zmtcdn.com/data/pictures/6/7101306/6240cc97a4cd3e6df297f6b075c308ed_featured_v2.jpg",
      "des":"A Burger is a flat round mass of minced meat or vegetables, which is fried and often eaten in a bread roll."
    },

    {
      "name":"French Fries-Rs.99",
      "image":"https://assets3.thrillist.com/v1/image/2992394/1200x630/flatten;crop_down;webp=auto;jpeg_quality=70",
      "des":"French fries, also called chips, finger chips, fries, or French pommes frites, side dish or snack typically made from deep-fried potatoes that have been cut into various shapes, especially thin strips."
    },
    {
      "name":"HotDog-Rs.249",
      "image":"https://m.media-amazon.com/images/S/aplus-media/vc/761b4065-0d68-4310-8777-b6238da525dc.__CR0,0,970,600_PT0_SX970_V1___.jpg",
      "des":"A hot dog (uncommonly spelled hotdog) is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can refer to the sausage itself. The sausage used is a wiener (Vienna sausage) or a frankfurter (Frankfurter Würstchen, also just called frank)."
    },
    {
      "name":"MilkShake-Rs.149",
      "image":"https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2FPhoto%2FRecipes%2F2020-07-how-to-make-a-milkshake-at-home%2F2020-06-08_AT-K19388",
      "des":"A milkshake (sometimes simply called a shake) is a sweet beverage made by blending milk, ice cream, and flavorings or sweeteners such as butterscotch, caramel sauce, chocolate syrup, fruit syrup, or whole fruit into a thick, sweet, cold mixture."
    },
    {
      "name":"Cold Drinks-Rs.49",
      "image":"https://images.herzindagi.info/image/2022/May/cold-drink-hacks-to-know.jpg",
      "des":"soft drink, any of a class of nonalcoholic beverages, usually but not necessarily carbonated, normally containing a natural or artificial sweetening agent, edible acids, natural or artificial flavours, and sometimes juice."
    },
    {
      "name":"GarlicBread-Rs.199",
      "image":"https://www.foodnetwork.com/content/dam/images/food/fullset/2015/5/28/2/TM1A14F_Garlic-Bread_s4x3.jpg",
      "des":"Garlic bread (also called garlic toast) consists of bread (usually a baguette or sour dough like a ciabatta), topped with garlic and olive oil or butter and may include additional herbs, such as oregano or chives. It is then either grilled until toasted or baked in a conventional or bread oven."
    },
    {
      "name":"Noodles-Rs.149",
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH1-nqmuc_VJnHDvK5nJ45RO-gxuD-BFdgbg&usqp=CAU",
      "des":"noodle, a cooked egg-and-flour paste prominent in European and Asian cuisine, generally distinguished from pasta by its elongated ribbonlike form. Noodles are commonly used to add body and flavour to broth soups. They are commonly boiled or sautéed and served with sauces and meats or baked in casseroles."
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Our Hot Items"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => details(data[index]),),);
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
                          image: NetworkImage(
                              data[index]["image"]
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data[index]["name"],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900)),
                    )
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
