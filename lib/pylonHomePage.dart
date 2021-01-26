import 'package:flutter/material.dart';
import 'package:pylon_mobile/verifyUserView.dart';


class pylonHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<pylonHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Drawer app"),
        ),
        drawer: Drawer(

          child: ListView(

            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Derby Licious"),
                accountEmail: Text("Coolest kid in GDS <3"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.blue
                      : Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text("Derby Licious"),

              ),
              ListTile(
                title: Text("Coolest Kid in GDS <3"),

              ),
            ],
          ),
        ));
  }
}
