import 'package:flutter/material.dart';
import 'form_cardparsing.dart' as cardparsing;
import 'form_home_page.dart' as homepage;
//import 'form_app_bar.dart' as appbar;
//import 'form_list_view.dart' as list_view;
import 'form_list_view_json.dart' as list_view_json;


void main() => runApp(MaterialApp(
title: 'The Simple Flutter',
theme: ThemeData(
primarySwatch: Colors.red,
),
home: TabBarPage()),);

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

  String gambar1="https://lh3.googleusercontent.com/a-/AAuE7mDGBvE57Rygy-27-mDf9j0nGWs--MfmOvxWifbbzQ=s640-rw-il";
  String gambar2;
  String tempUser;

  void GantiUser(){
    this.setState((){

    });
  }

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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text("nandha",style: TextStyle(color: Colors.amber)),
              accountEmail: Text("nandadwisubekti@gmail.com",style: TextStyle(color: Colors.amber)),
              decoration: BoxDecoration(
                image : DecorationImage(
                    image: NetworkImage("https://www.thomsonreuters.com/content/dam/ewp-m/images/image-library/en/photography/201138-118072186.jpeg.transform/hero-s/q90/image.jpg"),
                  fit: BoxFit.cover
                ),
              ),
              currentAccountPicture:
                  CircleAvatar(
                      backgroundImage : NetworkImage(gambar1),
                  ),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                    onTap: () => GantiUser(),
                    child: CircleAvatar(
                        backgroundImage : NetworkImage("https://pasberita.com/wp-content/uploads/2018/04/Hajime-no-Ippo.jpg"),
                    )
                ),
              ],
            ),
            ListTile(title: Text("Home"),trailing: Icon(Icons.home),),
            ListTile(title: Text("setting"),trailing: Icon(Icons.settings_applications),),

          ],
        ),
      ),

      body: TabBarView(
          controller: controller,
          children: <Widget>[
            cardparsing.CardParsing(),
            homepage.MyApp(),
//            appbar.AppBarPage(),
//            list_view.ListViewPage(),
            list_view_json.ListViewPage(),
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




