import 'package:flutter/material.dart';
import 'package:pylon_mobile/loginView.dart';
import 'package:pylon_mobile/pylonHomePage.dart';

class personalInformationForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

String radioButtonItem = 'ONE';
int id = 1;
class _State extends State<personalInformationForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

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
                                                'You are almost done!',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              child: Text(
                                                'Complete the information below to finish your registration.',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              controller: nameController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'First Name',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              controller: nameController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Middle Name',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              controller: nameController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Last Name',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: Text(
                                                'Gender',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Radio(
                                                value: 1,
                                                groupValue: id,
                                                onChanged: (val) {
                                                  setState(() {
                                                    radioButtonItem = 'Male';
                                                    id = 1;
                                                  });
                                                },
                                              ),
                                              Text(
                                                'Male',
                                                style: new TextStyle(fontSize: 15),
                                              ),

                                              SizedBox(
                                                width: 30,
                                                height: 15,
                                              ),

                                              Radio(
                                                value: 2,
                                                groupValue: id,
                                                onChanged: (val) {
                                                  setState(() {
                                                    radioButtonItem = 'Female';
                                                    id = 2;
                                                  });
                                                },
                                              ),
                                              Text(
                                                'Female',
                                                style: new TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              obscureText: true,
                                              controller: passwordController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Date of Birth',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              obscureText: true,
                                              controller: passwordConfirmController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Mobile Number',
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
                                                child: Text('Continue'),
                                                onPressed: () {
                                                  print(nameController.text);
                                                  print(passwordController.text);
                                                  print(passwordConfirmController
                                                      .text);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            pylonHomePage()),
                                                  );
                                                },
                                              )),
                                        ],
                                      ))),
                            ]),
                      ],
                    ),
                  ),
                ))));
  }

}
