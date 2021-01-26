import 'package:flutter/material.dart';
import 'package:pylon_mobile/verifyUserView.dart';


class verifyEmail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<verifyEmail> {
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
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            verifyUser()),
                                  );
                                },
                                child: new Card(
                                  
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
                                                  'Verify your email address',
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
                                                  'Please click on link that has just been sent to your email account to verify your email and continue the registration process.',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w300,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),),
                              ),
                              
                            ]),
                      ],
                    ),
                  ),
                ))));
  }
}
