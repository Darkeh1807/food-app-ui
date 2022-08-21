import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/category.dart';
import 'package:flutter_application_2/widgets/productdetails/firstshop.dart';
import 'package:flutter_application_2/widgets/productdetails/seconshop.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: InkWell(
          onTap: () => showModalBottomSheet(isScrollControlled: true,context: context, builder: (context)=>Container()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 18),
                child: Text(
                  "Delivery to",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "University of Ghana, Legon Hall",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ),
                 Icon(Icons.arrow_drop_down,size: 35,)
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 100),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60, top: 5),
              child: Text(
                "AugustineLove",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.phone_android),
                title: Text("Contact us"),
                trailing: TextButton(
                    onPressed: null, child: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.folder),
                title: Text("My files"),
                trailing: TextButton(
                    onPressed: null, child: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.money),
                title: Text("Donate"),
                trailing: TextButton(
                    onPressed: null, child: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: TextButton(
                    onPressed: null, child: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6),
        child: ListView(
          children: [
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstShop())),
              child: const Category(
                  catimg: "assets/images/restaurant.png",
                  cattitle: "James' fast food",
                  catdesc: "Free Delivery on all food you love",
                  iconforward: CupertinoIcons.forward),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
               onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondShop())),
              child: const Category(
                  catimg: "assets/images/ice-cream.png",
                  cattitle: "Hajia Fast food",
                  catdesc: "Free Delivery on all food you love",
                  iconforward: CupertinoIcons.forward),
            ),
            const SizedBox(
              height: 10,
            ),
            const Category(
                catimg: "assets/images/hamburger.png",
                cattitle: "Brukina Special",
                catdesc: "Free Delivery on all food you love",
                iconforward: CupertinoIcons.forward),
            const SizedBox(
              height: 10,
            ),
            const Category(
                catimg: "assets/images/pizza.png",
                cattitle: "Enam pa fast food",
                catdesc: "Free Delivery on all food you love",
                iconforward: CupertinoIcons.forward),
            const SizedBox(
              height: 10,
            ),
            const Category(
                catimg: "assets/images/food.png",
                cattitle: "Ekwan pa special joint",
                catdesc: "Free Delivery on all food you love",
                iconforward: CupertinoIcons.forward),
            const SizedBox(
              height: 10,
            ),
            const Category(
                catimg: "assets/images/pastry.png",
                cattitle: "Restaurants",
                catdesc: "Free Delivery on all food you love",
                iconforward: CupertinoIcons.forward),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
