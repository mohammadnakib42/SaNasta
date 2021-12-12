import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sa_nasta/src/models/category.dart';
import 'package:sa_nasta/src/widgets/categories.dart';
import 'package:sa_nasta/src/widgets/featured_products.dart';
import 'package:sa_nasta/src/widgets/small_floating_button.dart';
import 'package:sa_nasta/src/widgets/title.dart';

import '../commons.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What would you like to eat?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 1),
                    blurRadius: 4,
                  ),
                ]),
                child: ListTile(
                  //tileColor: grey,
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find food and restaurents",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Featured",
                size: 20,
                color: grey,
                weight: FontWeight.bold,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Trending",
                size: 20,
                color: Colors.greenAccent,
                weight: FontWeight.bold,
              ),
            ),
            //Starts from here the trending part
            Padding(
              padding: const EdgeInsets.all(2),
              child: Stack(children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/steak.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SmallButton(Icons.favorite),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow[900],
                                  size: 20,
                                ),
                              ),
                              Text("4.5"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.05),
                          Colors.black.withOpacity(0.025),
                        ],
                      ),
                    ),
                  ),
                )),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12,8,8,8),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Steak \n",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              TextSpan(
                                text: "by: ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              TextSpan(
                                text: "Tabaruk",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: "\$12.99 \n", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w300,color: Colors.white),),
                        ],
                          style: TextStyle(color: Colors.black),
                        ),),
                      ),
                    ],
                  ),
                )),
              ]),
            ),

            //ends the trending part
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 75,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "images/home.png",
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(height: 2,),
                  CustomText(text: "Home",),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "images/target.png",
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(height: 2,),
                  CustomText(text: "Near By",),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "images/cart3.png",
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(height: 2,),
                  CustomText(text: "Cart",),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "images/profile.png",
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(height: 2,),
                  CustomText(text: "Me",),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
