import 'package:flutter/material.dart';

void main() => runApp(ListViewPage());

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        body : ListView(
          children: <Widget>[
            ViewListView(gambar : 'img/fl-1.jpg',judul : 'anime 01'),
            ViewListView(gambar : 'img/fl-2.jpg',judul : 'anime 02'),
            ViewListView(gambar : 'img/fl-3.jpg',judul : 'anime 03'),
            ViewListView(gambar : 'img/fl-1.jpg',judul : 'anime 04'),
            ViewListView(gambar : 'img/fl-1.jpg',judul : 'anime 01'),
            ViewListView(gambar : 'img/fl-2.jpg',judul : 'anime 02'),
            ViewListView(gambar : 'img/fl-3.jpg',judul : 'anime 03'),
          ],
        )
      ),
    );
  }

}

class ViewListView extends StatelessWidget {
  ViewListView({this.gambar,this.judul});
  final String gambar;
  final String judul;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Image.asset(gambar,height: 100.0,),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Text(judul),
                  Text('Test Descripsi',style: TextStyle(fontSize: 15.0),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
