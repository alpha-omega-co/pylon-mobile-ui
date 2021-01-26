import 'package:flutter/material.dart';
import 'package:pylon_mobile/registerView.dart';
import 'package:pylon_mobile/verifyEmailView.dart';

class loginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<loginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
                child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overScroll) {
                overScroll.disallowGlow();
                return false;
              },
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: <Widget>[
                          new Card(
                              color: Colors.white,
                              child: new Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  child: new Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          child: Text(
                                            'Sign In to your Account',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: nameController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'User Name',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
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
                                          height: 50,
                                          width: double.infinity,
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 8, 0),
                                          child: RaisedButton(
                                              textColor: Colors.white,
                                              color: Colors.green,
                                              child: Text('Sign in'),
                                              onPressed: () {
                                                print(nameController.text);
                                                print(passwordController.text);
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          verifyEmail()),
                                                );
                                              })),
                                      SizedBox(
                                        width: 50,
                                        height: 10,
                                      ),
                                      Container(
                                        child: FlatButton(
                                          onPressed: () {
                                            //forgot password screen
                                          },
                                          textColor: Colors.green,
                                          padding: EdgeInsets.all(10),
                                          child: Text('Forgot Password'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                        height: 15,
                                      ),
                                      Container(
                                          child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Does not have account?',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15),
                                          ),
                                          FlatButton(
                                            textColor: Colors.green,
                                            child: Text(
                                              'Sign up',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        registerPage()),
                                              );
                                            },
                                          )
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                      ))
                                    ],
                                  ))),
                        ]),
                  ],
                ),
              ),
            ))));
  }
}
