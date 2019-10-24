import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  String text = "";
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  void _alertDialog(String str){
    if (str == "") return;
    AlertDialog alertDialog = AlertDialog(
      content: Text(str,style: TextStyle(fontSize: 20.0)),
      actions: <Widget>[
        RaisedButton(
          child: Text("alert btn", style: TextStyle(color: Colors.black),),
          onPressed: (){
            Navigator.of(context).pop();
          },
        )
      ],
    );

    showDialog(context: context,child: alertDialog);

  }

  void _snackbar(String str){
    if (str == "") return;
    _scaffoldState.currentState.showSnackBar(new SnackBar(
        content: Text(str, style: TextStyle(fontSize: 20.0),),
      duration: Duration(seconds: 3),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      body: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller : controller,
                  decoration:
                      new InputDecoration(hintText: "Tulis sesuatu disini"),
                  onSubmitted: (String str) {
                    setState(() {
                      text = str + "\n" + text;
                      controller.text = "";
                    });
                  },
                ),

                Text(
                  text,
                  style: TextStyle(fontSize: 20.0),
                ),
                TextField(
                  controller : controller2,
                  decoration:
                  new InputDecoration(hintText: "Tulis sesuatu disini"),
                  onSubmitted: (String str) {
                    _alertDialog(str);
                  },
                ),
                TextField(
                  controller : controller3,
                  decoration:
                  new InputDecoration(hintText: "Tulis sesuatu disini"),
                  onSubmitted: (String str) {
                    _snackbar(str);
                  },
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'img/fl-2.jpg',
                  height: 100.0,
                ),
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          )
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ),
    );
  }
}
