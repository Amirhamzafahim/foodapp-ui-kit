import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Order"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                  return  Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/cake.png'))),
                              )),
                          Expanded(
                              flex: 2,
                              child: Row(
                                children: <Widget>[
                                  Text("Cake"),
                                  Spacer(),
                                  Text("\$9.00")
                                ],
                              )),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
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
                                Icon(Icons.add),
                                Text("1"),
                                Icon(Icons.add),
                              ],
                            ),
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
             Padding(padding:EdgeInsets.all(10),child: Row(
               children: <Widget>[
                 Text("Sub total"),
                 Spacer(),
                 Text("\$9.00")
                


               ],

             ), ) ,
             Divider(color: Colors.grey,), Padding(padding:EdgeInsets.all(10),child: Row(
               children: <Widget>[
                 Text("Total"),
                 Spacer(),
                 Text("\$18.00")
                


               ],

             ), ) 
             
            ],
          ),
        ),
      ),
    );
  }
}
