import 'package:flutter/material.dart';

void main() => runApp(AppBarPage());

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Simple Flutter',

      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: MyHomePage(title: 'Home Page'),
      home : Scaffold(
        backgroundColor: Colors.limeAccent,
        appBar : AppBar(
          leading: Icon(Icons.home),
          title: Center( child : Text("App Bar Page")),
          actions: <Widget>[Icon(Icons.search)],
        ),
        body : Container(
          child : Column(
            children: <Widget>[
              Icon(Icons.android,
                  size:70.0,
                  color: Colors.red),

              Row(children: <Widget>[
                Icon(Icons.airplay,
                    size:70.0,
                    color: Colors.red),
                Icon(Icons.airplay,
                    size:70.0,
                    color: Colors.red),
                Icon(Icons.airplay,
                    size:70.0,
                    color: Colors.red),
              ],),
              Icon(Icons.pregnant_woman,
                  size:70.0,
                  color: Colors.red)
            ],
          ),

        ),
      ),
    );
  }

}