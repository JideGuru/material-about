import 'package:flutter/material.dart';
import 'package:material_about_example/ui/dark.dart';
import 'package:material_about_example/ui/light.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("Light"),
            onPressed: () {
              var router = new MaterialPageRoute(
                  builder: (BuildContext context){
                    return Light();
                  }
              );

              Navigator.of(context).push(router);
            },
          ),

          RaisedButton(
            child: Text("Dark"),
            onPressed: () {
              var router = new MaterialPageRoute(
                  builder: (BuildContext context){
                    return Dark();
                  }
              );

              Navigator.of(context).push(router);
            },
          )
        ],
      ),
    );
  }
}
