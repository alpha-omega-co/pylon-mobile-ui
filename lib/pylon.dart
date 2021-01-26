import 'package:flutter/material.dart';
import 'package:pylon_mobile/loginView.dart';
import 'package:pylon_mobile/registerView.dart';

class pylon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<pylon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    new Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: new Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                child: Text(
                                  'Pylon',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 40),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                child: Text(
                                  'Secured Account Management',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                            SizedBox(width: 50,height: 30,),
                            Container(
                                height: 50,
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),

                                child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.green,
                                  child: Text('Sign In'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => loginPage()),
                                    );
                                  },
                                )),
                            SizedBox(width: 50,height: 15,),
                            Container(
                                height: 50,
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: OutlineButton(
                                  textColor: Colors.green,
                                  child: Text('Sign Up'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => registerPage()),
                                    );
                                  },
                                )),
                          ],
                        )),
                  ]),
            ],
          ),
        ),
      ),
    ));
  }
}
