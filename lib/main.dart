import 'package:flutter/material.dart';

void main() => runApp(CardParsing());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Simple Flutter2',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Home Page'),
      );
  }
}

class CardParsing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card n Parsing',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      routes: <String,WidgetBuilder>{
        '/HelloWorldPage' :(BuildContext context) => HelloWorldPage(),
        '/MyApp' :(BuildContext context) => MyApp()
      },
      home : Scaffold(
        appBar : AppBar(
          title: Text("Card n Parsing Page"),
        ),
        body : Container(
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ViewCardSaya(lIcon: Icons.bluetooth,lText: "Nandha",lColor: Colors.lime,),
              ViewCardSaya(lIcon: Icons.android,lText: "Dwi",lColor: Colors.red,),
              ViewCardSaya(lIcon: Icons.home,lText: "Subekti",lColor: Colors.green,),
            ],
          ),

        ),
      ),
    );
  }

}

class ViewCardSaya extends StatelessWidget{
  ViewCardSaya({this.lIcon,this.lText,this.lColor});
  final IconData lIcon;
  final String lText;
  final Color lColor;
  @override
  Widget build(BuildContext context){
    return Container(
          padding: EdgeInsets.all(10.0),
          child: Card(
              child: InkWell(
                  onTap: () => Navigator.of(context).pushNamed('/HelloWorldPage'),
                  child:
                  Row(
                    children: <Widget>[
                      Icon(lIcon,size: 50.0,color:lColor,),
                      Text(lText)
                    ],
                  )
              ),


          ),
    );
  }

}

class HelloWorldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Simple Flutter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home : Scaffold(
        appBar : AppBar(
          title: Text("Hello World Page"),
        ),
        body : Center(
          child :
          Row(
            children: <Widget>[
              Text("Hello Master Nandha, Its me your apps"),
              RaisedButton(
                child: Text("klik disini"),
                onPressed: () => Navigator.of(context).pushNamed('/MyApp')
              )
            ],
          )
          ,


        ),
      ),
    );
  }

}

class StylingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Simple Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home : Scaffold(
        appBar : AppBar(
          title: Text("Styling Page"),
        ),
        body : Center(
          child: Container(
          color: Colors.yellow[900],
          width: 200.0,
          height: 100.0,
          child :
          Center(
            child: Icon(Icons.android,color: Colors.white, size: 60.0,)

            //kode di bawah untuk contoh text
//              child : Text("text ini berada dalam div html"
//                  ,style : TextStyle(color: Colors.yellow, fontFamily: "Serif", fontSize: 5.0))
          ),
        ),


        )


      ),
    );
  }
}

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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
