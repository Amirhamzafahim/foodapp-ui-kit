import 'package:flutter/material.dart';
import 'package:foodappui_kit/home.dart';
import 'package:foodappui_kit/widget/widget.dart';


class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 230,
              left: 50,
              right: 50,
              child: Container(
                height: 50,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 1,
                      ),
                    ]),
                child: TabBar(

                    //tab bar design

                    controller: _tabController,
                    isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                    labelColor: Colors.black,
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 24),
                    // indicatorSize: TabBarIndicatorSize.tab,
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: <Widget>[
                      Text("Login"),
                      Text("Signin"),
                    ]),
              ),
            ),
            Container(
              height: 600,
              child: TabBarView(controller: _tabController, children: [
                Container(
                  height: MediaQuery.of(context).size.height - 50,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          style: simpleTextStyle(),
                          decoration: textFieldInputDecoration("email"),
                        ),
                        TextField(
                          style: simpleTextStyle(),
                          decoration: textFieldInputDecoration("password"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot password",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                            ),
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Login",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // SizedBox(height: 55,),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 50,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          style: simpleTextStyle(),
                          decoration: textFieldInputDecoration("User name"),
                        ),
                        TextField(
                          style: simpleTextStyle(),
                          decoration: textFieldInputDecoration("email"),
                        ),
                        TextField(
                          style: simpleTextStyle(),
                          decoration: textFieldInputDecoration("password"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot password",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange),
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Sign up",
                            textAlign: TextAlign.center,
                          ),
                        ),

                        // SizedBox(height: 55,),
                      ],
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
