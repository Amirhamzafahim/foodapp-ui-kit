import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodappui_kit/cart.dart';

class FoodDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body:SafeArea (
              child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                  ),
                ),
               Positioned (
                
                 top: -56,
              
                                child: Container(
                    height:250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                     
                        image: DecorationImage(
                            image: AssetImage("assets/images/cake.png"),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.42,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                ),
                Positioned(
                  left: 120,
                  top: -10,
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.minus,),
                          Text("1"),

                          //Todo 
                    Icon(Icons.add),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[Text("Cake"), Text("\$6.99")],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.star),
                      Text("2.6"),
                      Icon(FontAwesomeIcons.fire,color: Colors.amberAccent,),
                      Text("65 caloris"),
                      Icon(Icons.access_alarm),
                      Text("2.0 min"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100,left: 5,right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Details"),
                      SizedBox(height: 10,),
                      Text(
                          '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin profesthe cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. ''')
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=> Cartpage() ));

        },
        backgroundColor: Color(0XFFffbf00),
        child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// ListView(
//         children: <Widget>[
//           Stack(
//             children: <Widget>[
//               Container(
//                 height: 280,
//               ),
//               Positioned(
//                 top: 15,
//                 left: (MediaQuery.of(context).size.width / 2) - 125,
//                 child: Container(
//                   height: 250,
//                   width: 260,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage('assets/cake.png'), fit: BoxFit.contain)),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 15.0),
//           Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25.0),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.withOpacity(0.2),
//                       spreadRadius: 3.0,
//                       blurRadius: 5.0)
//                 ],
//                 color: Color(0xffd6dbdc)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     SizedBox(
//                       width: 95,
//                     ),
//                     // Text(
//                     //   "R45",
//                     //   style: TextStyle(
//                     //     fontSize: 24.0,
//                     //     color: Colors.blueGrey,
//                     //     fontWeight: FontWeight.w400,
//                     //   ),
//                     // ),
//                     Container(
//                       child: Container(
//                         height: 40.0,
//                         width: 125,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(25.0),
//                             color: Colors.amberAccent),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             IconButton(
//                               icon: Icon(Icons.remove_circle_outline,
//                                   color: Colors.blueGrey),
//                               onPressed: () {},
//                             ),
//                             Text(
//                               '1',
//                               style: TextStyle(
//                                   fontSize: 14.0, color: Colors.blueGrey),
//                             ),
//                             IconButton(
//                               icon: Icon(Icons.add_circle_outline,
//                                   color: Colors.blueGrey),
//                               onPressed: () {},
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "Meal Name",
//                   style: TextStyle(
//                       fontSize: 30.0,
//                       color: Color(0XFFffbf00),
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Neucha'),
//                 ),
//                 SizedBox(height: 24.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Row(
//                       children: <Widget>[
//                         Text(
//                           '4.9',
//                           style: TextStyle(
//                               fontFamily: 'Montserrat',
//                               color: Colors.blueGrey,
//                               fontSize: 17.0),
//                         ),
//                         SizedBox(width: 10.0),
//                         Icon(Icons.star, color: Color(0XFFffbf00), size: 20.0),
//                       ],
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Icon(Icons.timer, color: Color(0XFFffbf00), size: 20.0),
//                         SizedBox(width: 10.0),
//                         Text(
//                           "20 - 30 min",
//                           style: TextStyle(
//                               fontFamily: 'Montserrat',
//                               // fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                               fontSize: 14.0),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 50.0),
//                 Text(
//                   'About the food',
//                   style: TextStyle(
//                       fontFamily: 'Montserrat',
//                       fontSize: 16.0,
//                       color: Colors.black),
//                 ),
//                 SizedBox(height: 15.0),
//                 Container(
//                   child: Text(
//                     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
//                     style: TextStyle(
//                         fontFamily: 'Montserrat',
//                         fontSize: 14.0,
//                         color: Colors.grey),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
// )
