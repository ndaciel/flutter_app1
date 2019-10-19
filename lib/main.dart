import 'package:flutter/material.dart';
import 'form_cardparsing.dart' as cardparsing;
import 'form_home_page.dart' as homepage;
import 'form_app_bar.dart' as appbar;

<<<<<<< HEAD
void main() => runApp(MaterialApp(
title: 'The Simple Flutter',
theme: ThemeData(
primarySwatch: Colors.red,
),
home: TabBarPage()),);
=======
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
>>>>>>> 0c16493ffda2cea0b9c5959a920b166d5590ae63

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

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin{
  TabController  controller;

  @override
  void initState() {
    controller = new TabController(vsync: this,length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Tab Page"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.computer),text: 'card parsing',),
            Tab(icon: Icon(Icons.headset),text : 'home page'),
            Tab(icon: Icon(Icons.radio), text : 'app bar'),
          ],
        ),
      ),

      body: TabBarView(
          controller: controller,
          children: <Widget>[
            cardparsing.CardParsing(),
            homepage.MyApp(),
            appbar.AppBarPage(),
          ]),

      bottomNavigationBar: Material(
        color: Colors.green,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.computer),),
            Tab(icon: Icon(Icons.headset),),
            Tab(icon: Icon(Icons.radio),),
          ],
        ),
      ),
      );

  }
}




