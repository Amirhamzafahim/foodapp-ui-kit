import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:foodappui_kit/bottomNavBar.dart';
import 'package:foodappui_kit/food_details.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0XFFffbf00),
        child: Icon(Icons.shopping_basket),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Let's eat",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Neucha'),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Quality food",
                      style: TextStyle(
                          color: Color(0XFFffbf00),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Neucha'),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          // padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 243, 243, 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                    color: Color(0XFFffbf00)),
                                hintText: "Search food",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(child: Icon(Icons.menu)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: <Widget>[Text("food item")],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amberAccent),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: <Widget>[Text("Fruit item")],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amberAccent),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: <Widget>[Text("Vegetable item")],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 40, left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FoodDetails()));
                        },
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            //  Positioned (top:90 , child: Image.asset("assets/images/cake.png",fit: BoxFit.cover,height:200, )),
                            Container(
                              height: 200,
                              // height: MediaQuery.of(context).size.height,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),

                            Positioned(
                              left: 24,
                              top: -55,
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(1, 30),
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 2.0,
                                          blurRadius: 3.0)
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/cake.png",
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Positioned(
                                top: 44, left: 37, child: Text("Egg pasta")),
                            Positioned(
                                top: 74,
                                left: 28,
                                child: Text(
                                  "Spicy Chiken Pasta",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )),

                            Positioned(
                              top: 100,
                              left: 28,
                              child: Row(
                                children: <Widget>[
                                  Icon(FontAwesomeIcons.fire,color:Colors.amberAccent ,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("78 Calories")
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 30,
                                left: 28,
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: "\$",
                                      style: TextStyle(
                                          color: Colors.amberAccent,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: "9.80",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                ]))),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.amberAccent,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(30))),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget foodCard(image, context) {
  //   return Padding(
  //     padding: EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
  //     child: InkWell(
  //       onTap: () {
  //         Navigator.of(context).push(MaterialPageRoute(
  //             builder: (context) => FoodDetails(image: image)));
  //       },
  //       child: Container(

  //           // height: MediaQuery.of(context).size.height,
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(25.0),
  //               boxShadow: [
  //                 BoxShadow(
  //                     color: Colors.grey.withOpacity(0.2),
  //                     spreadRadius: 3.0,
  //                     blurRadius: 5.0)
  //               ],
  //               color: Color(0xffd6dbdc)),
  //           child: Column(
  //             children: <Widget>[
  //               Hero(
  //                 tag: image,
  //                 child: Container(
  //                     height: 200,
  //                     width: 185.0,
  //                     decoration: BoxDecoration(
  //                         image: DecorationImage(
  //                             image: AssetImage(image), fit: BoxFit.contain))),
  //               )
  //             ],
  //           )),
  //     ),
  //   );
}
