
import 'package:flutter/material.dart';
import 'package:sa_nasta/src/models/category.dart';
import 'package:sa_nasta/src/widgets/title.dart';

List<Category> categoriesList = [
  Category(name: "Steak",image: "steak.jpg"),
  Category(name: "Nachoz Lite",image: "nachoz_lite.jpg"),
  Category(name: "Special Rice Bowl",image: "special_rice_bowl.jpg"),
  Category(name: "Sub Sandwich",image: "Subway-Launches-New-BBQ-Rib-Sandwich-Nationwide-678x381.jpg"),
  Category(name: "Firey Rice Bowl",image: "firey_rice_bowl.jpg"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[50],
                        offset: Offset(5,6),
                        blurRadius: 20,
                      ),
                    ],

                  ),
                  child:  Padding(padding:  EdgeInsets.all(4),
                    child: Image.asset("images/${categoriesList[index].image}",width: 50,),
                  ),
                ),
                SizedBox(height: 5,),
                CustomText(text: categoriesList[index].name,size: 16,color: Colors.blue,),
              ],
            ),
          );
        },
      ),
    );
  }
}
