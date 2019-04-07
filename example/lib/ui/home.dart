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

      appBar: AppBar(
        title: Text(
          "Material About Example"
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Align(
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
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
                color: Colors.black,
                child: Text(
                  "Dark",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
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
        ),
      ),
    );
  }
}
