import 'package:flutter/material.dart';
import 'package:pylon_mobile/personalInformationForm.dart';
import 'package:pylon_mobile/verifyUserView.dart';


class passwordChangeSuccess extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<passwordChangeSuccess> {
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
                                            personalInformationForm()),
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
                                              width: double.infinity,
                                              child: Text(
                                                'Password Changed',
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
                                              width: double.infinity,
                                              child: Text(
                                                'You will be signed in automatically',
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
                                                'Logging in....',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 25),
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
