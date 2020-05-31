import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import "ItemsInfo.dart";
import "peopleQ.dart";
void main() {
  runApp(MaterialApp(
    home: SignInforStore(),
  ));
}

class SignInforStore extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SignInforStore> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Qsafe Store Manager Login!'),

        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Qsafe",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),

                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUpforStore()),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                //_signInButton(),
              ],
            )));
  }

}
class SignUpforStore extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Yourself !"),
      ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Qsafe',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Store Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Manager Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0,top:20.0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Sign Up'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ManagerActivity()),
                        );
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Already not have account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign In',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignInforStore()),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            ))
    );
  }
}
class ManagerActivity extends StatelessWidget{
  double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),

        body:
        Column(

          children:<Widget>[

            Container(

          padding: EdgeInsets.fromLTRB(10,10,10,10),
          height: 100,
          width: double.maxFinite,
            child: Card(
           elevation: 5,
              child: Padding(
                    padding: EdgeInsets.only(top:10),
                          child: Stack(
                          children: <Widget>[
                              Align(
                                      alignment: Alignment.centerRight,
                                      child: Stack(
                                      children: <Widget>[
                                          Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 5),
                                                  child: Column(
                                                            children: <Widget>[
                                                          Row(
                                                          children: <Widget>[
                                                                Padding(
                                                                    padding: const EdgeInsets.only(left: 15.0),
                                                                    child:Column(
                                                                      children: <Widget>[
                                                                        Row(

                                                                            children:<Widget>[
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(builder: (context) => SignUpforStore()),
                                                                                  );
                                                                                },
                                                                                child: getIcon(),

                                                                              ),
                                                                              SizedBox(
                                                                                height:10,
                                                                              ),

                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(builder: (context) => SignUpforStore()),
                                                                                  );
                                                                                },
                                                                                child: getName(),

                                                                              ),
                                                                                    SizedBox(
                                                                                      width: 10,
                                                                                    ),

                                                                              ]
                                                                            )
                                                                        ]
                                                                    ),
                                                                    )
                                                                     ]


                                                                    )
                                                                  ],
                                                              )


                                                      ),

                                                  ],
                                          )
                                    )
                  ],
    ),
    )
    ),
    ),

            Container(

              padding: EdgeInsets.fromLTRB(10,10,10,10),
              height: 100,
              width: double.maxFinite,
              child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.only(top:10),
                    child: Stack(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(left: 15.0),
                                                child:Column(
                                                    children: <Widget>[
                                                      Row(
                                                          children:<Widget>[
                                                        GestureDetector(
                                                              onTap: () {
                                                               Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => MyApp()),
                                                                );
                                                              },
                                                              child: getIconforItemInfo(),
                                                            ),
//                                                            RaisedButton(
//                                                              child:getIconforItemInfo(),
//                                                              onPressed: launch,
//                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => MyApp()),
                                                                );
                                                              },
                                                              child: getNameforItemInfo(),
                                                            ),

                                                          ]
                                                      )
                                                    ]
                                                ),
                                              )
                                            ]


                                        )
                                      ],
                                    )


                                ),

                              ],
                            )
                        )
                      ],
                    ),
                  )
              ),
            ),
            Container(

              padding: EdgeInsets.fromLTRB(10,10,10,10),
              height: 100,
              width: double.maxFinite,
              child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.only(top:10),
                    child: Stack(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(left: 15.0),
                                                child:Column(
                                                    children: <Widget>[
                                                      Row(
                                                          children:<Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => ShowPeopleInQueue()),
                                                                );
                                                              },
                                                              child: getIconforLineView(),
                                                            ),
//                                                            RaisedButton(
//                                                              child:getIconforItemInfo(),
//                                                              onPressed: launch,
//                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => ShowPeopleInQueue()),
                                                                );
                                                              },
                                                              child: getNameforLineView(),
                                                            ),
                                                          ]
                                                      )
                                                    ]
                                                ),
                                              )
                                            ]


                                        )
                                      ],
                                    )


                                ),

                              ],
                            )
                        )
                      ],
                    ),
                  )
              ),
            ),
            Container(

              padding: EdgeInsets.fromLTRB(10,10,10,10),
              height: 100,
              width: double.maxFinite,
              child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.only(top:10),
                    child: Stack(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(left: 15.0),
                                                child:Column(
                                                    children: <Widget>[
                                                      Row(
                                                          children:<Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => SignUpforStore()),
                                                                );
                                                              },
                                                              child: getIconforStoreInfo(),

                                                            ),
                                                            SizedBox(
                                                              height:10,
                                                            ),

                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) =>SignUpforStore()),
                                                                );
                                                              },
                                                              child: getNameforStoreInfo(),

                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                          ]
                                                      )
                                                    ]
                                                ),
                                              )
                                            ]


                                        )
                                      ],
                                    )


                                ),

                              ],
                            )
                        )
                      ],
                    ),
                  )
              ),
            ),

          ]
        )
          )
    );
  }
}
Widget getIcon() {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(
          Icons.account_box,
          color: Colors.blueAccent,
          size: 40,
        )
    ),
  );
}
Widget getName() {
  return Padding(
    padding:EdgeInsets.only(left:20),
    child: RichText(
      text: TextSpan(
        text: 'My Account',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),

      ),
    ),
  );
}
Widget getIconforItemInfo() {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(
          Icons.add_shopping_cart ,
          color: Colors.black,
          size: 40,
        )
    ),
  );
}
Widget getNameforItemInfo() {
  return Padding(
    padding:EdgeInsets.only(left:20),
    child: RichText(
      text: TextSpan(
        text: 'Items Info',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),

      ),
    ),
  );
}
Widget getIconforLineView() {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(
          Icons.accessibility_new ,
          color: Colors.blueAccent,
          size: 40,
        )
    ),
  );
}
Widget getNameforLineView() {
  return Padding(
    padding:EdgeInsets.only(left:20),
    child: RichText(
      text: TextSpan(
        text: 'People In Line!',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),

      ),
    ),
  );
}
Widget getIconforStoreInfo() {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(
          Icons.add_location ,
          color: Colors.blueAccent,
          size: 40,
        )
    ),
  );
}
Widget getNameforStoreInfo() {
  return Padding(
    padding:EdgeInsets.only(left:20),
    child: RichText(
      text: TextSpan(
        text: 'Store Info (Location,Timings)',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),

      ),
    ),
  );
}