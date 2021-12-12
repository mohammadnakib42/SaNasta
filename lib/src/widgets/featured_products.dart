import 'package:flutter/material.dart';
import 'package:sa_nasta/src/helpers/screen_navigation.dart';
import 'package:sa_nasta/src/models/products.dart';
import 'package:sa_nasta/src/screens/details.dart';
import 'package:sa_nasta/src/widgets/title.dart';

import '../commons.dart';

List<Product> productsList = [
  Product(name: "Cereals",price:5.99,rating: 4.2,vendor: "GoodFoods",wishList: false,image: "steak.jpg"),
  Product(name: "Ice Cream",price:2.99,rating: 4.7,vendor: "GoodFoods",wishList: true,image: "ice_cream.jpg"),
  Product(name: "Sa-fata",price:12.99,rating: 5.0,vendor: "GoodFoods",wishList: true,image: "fast_foods.png"),
];
class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding:  EdgeInsets.fromLTRB(12,14,16,12),
            child: GestureDetector(
              onTap: (){
                changeScreen(_,Details(product: productsList[index],));
              },
              child: Container(
                height: 220,
                width: 200,
                decoration:
                BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(15, 5),
                    blurRadius: 30,
                  ),
                ]),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "images/${productsList[index].image}",
                      height: 140,
                      width: 140,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(text: productsList[index].name),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.green,
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: productsList[index].wishList ?Icon(
                                Icons.favorite,
                                size: 18,
                              ):Icon(
                                Icons.favorite_border,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productsList[index].rating.toString(),
                                color: Colors.grey,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: grey,
                              size: 16,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: CustomText(text: "\$${productsList[index].price}",weight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
