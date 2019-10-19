import 'package:flutter/material.dart';

void main() => runApp(CardParsing());

class CardParsing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card n Parsing',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
//      routes: <String,WidgetBuilder>{
//        '/HelloWorldPage' :(BuildContext context) => HelloWorldPage(),
//        '/MyApp' :(BuildContext context) => MyApp()
//      },
      home : Scaffold(
        body : Container(
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ViewCardSaya(lIcon: Icons.bluetooth,lText: "Nandha",lColor: Colors.lime,),
              ViewCardSaya(lIcon: Icons.android,lText: "Dwi",lColor: Colors.red,),
              ViewCardSaya(lIcon: Icons.home,lText: "Subekti",lColor: Colors.green,),
              Image.asset('img/fl-1.jpg', width: 200.0, height: 100.0,)
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