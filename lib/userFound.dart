import 'package:flutter/material.dart';
import 'package:pylon_mobile/accountRecovery.dart';
import 'package:pylon_mobile/verifyUserView.dart';

class userFound extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

enum SingingCharacter { lafayette, jefferson }

int _groupValue = 0;


class _State extends State<userFound> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = "du**mz***nz@gmail.com";
  String phoneNumber = "095******71";

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
                              //       builder: (context) => verifyUser()),
                              // );
                            },
                            child: new Card(
                              color: Colors.white,
                              child: new Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.all(10),
                                  child: new Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(24),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            'We Found',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          child: Row(
                                        children: <Widget>[
                                          CircleAvatar(
                                              radius: 40,
                                              backgroundImage: NetworkImage(
                                                  'https://via.placeholder.com/140x100')),
                                          SizedBox(
                                            width: 30,
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              child: Text(
                                                'Derbylicious',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 25),
                                              ),
                                            ),
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                      )),
                                      SizedBox(
                                        width: 30,
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          child: Text(
                                            'How do you want to retrieve your account?',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                        height: 10,
                                      ),
                                      _myRadioButton(
                                        title: "Send Codes to my Email\n"+email,
                                        value: 0,
                                        onChanged: (newValue) => setState(() => _groupValue = newValue),
                                      ),
                                      _myRadioButton(
                                        title: "Send Codes to my number\n"+phoneNumber,
                                        value: 1,
                                        onChanged: (newValue) => setState(() => _groupValue = newValue),
                                      ),
                                      SizedBox(
                                        width: 50,
                                        height: 30,
                                      ),
                                      Container(
                                          child: Row(
                                            children: <Widget>[
                                              FlatButton(
                                                textColor: Colors.green,
                                                child: Text(
                                                  'Not me',
                                                  style: TextStyle(fontSize: 15),
                                                ),
                                                onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //       builder: (context) =>
                                                  //           loginPage()),
                                                  // );
                                                },
                                              ),
                                              SizedBox(
                                                width: 50,
                                                height: 15,
                                              ),
                                              RaisedButton(
                                                color: Colors.green,
                                                textColor: Colors.white,
                                                child: Text(
                                                  'Send Nodes',
                                                  style: TextStyle(fontSize: 15),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            accountRecovery()),
                                                  );
                                                },
                                              )
                                            ],
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                          )),
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

Widget _myRadioButton({String title, int value, Function onChanged}) {
  return RadioListTile(
    value: value,
    groupValue: _groupValue,
    onChanged: onChanged,
    title: Text(title),
  );
}
