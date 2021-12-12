import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sa_nasta/src/commons.dart';
import 'package:sa_nasta/src/models/products.dart';
import 'package:sa_nasta/src/widgets/title.dart';
class Details extends StatefulWidget {
  final Product product;

  Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              //width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [

                  Carousel(
                    images: [
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                    ],
                    dotBgColor: Colors.white,
                    dotColor: Colors.grey,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 1.5,
                    autoplay: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_sharp,color: Colors.black,),
                        onPressed: (){Navigator.pop(context);},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Image.asset("images/cart2.png",width: 30,height: 30,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey,
                                  offset: Offset(2,1),
                                    blurRadius: 3
                                  ),
                                ],
                              ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4,right: 4),
                                  child: CustomText(text: "2",color: red,),
                                ),
                            ),

                           
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
