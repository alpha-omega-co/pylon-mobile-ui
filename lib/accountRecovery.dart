import 'package:flutter/material.dart';
import 'package:pylon_mobile/changePassword.dart';
import 'package:pylon_mobile/userFound.dart';

class accountRecovery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<accountRecovery> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
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
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           registerPage()),
                                  // );
                                },
                                child: new Card(
                                  color: Colors.white,
                                  child: new Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: new Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: Text(
                                                'Account Recovery',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 25),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              child: Text(
                                                'Please check the security code sent to your email address to continue recovery process',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: Text(
                                                'Please enter security code',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              controller: nameController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Security Code',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: Text(
                                                'Did not receive code?',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                            height: 20,
                                          ),
                                          Container(
                                              child: Row(
                                                children: <Widget>[
                                                  FlatButton(
                                                    textColor: Colors.green,
                                                    child: Text(
                                                      'Cancel',
                                                      style: TextStyle(fontSize: 15),
                                                    ),
                                                    onPressed: () {
                                                      // Navigator.push(
                                                      //   context,
                                                      //   MaterialPageRoute(
                                                      //       builder: (context) =>
                                                      //           registerPage()),
                                                      // );
                                                    },
                                                  ),
                                                  SizedBox(
                                                    width: 50,
                                                    height: 20,
                                                  ),
                                                  FlatButton(
                                                    color: Colors.green,
                                                    textColor: Colors.white,
                                                    child: Text(
                                                      'Verify Code',
                                                      style: TextStyle(fontSize: 15),
                                                    ),
                                                    onPressed: () {
                                                      print(nameController.text);
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                changePassword()),
                                                      );
                                                    },
                                                  )
                                                ],
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                              ))
                                        ],
                                      )),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ))));
  }
}
