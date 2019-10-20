import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() => runApp(MaterialApp(title: "List View", home: ListViewPage()));

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List dataJson;

  Future<String> ambildata() async {
    http.Response hasil = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
        headers: {"Accept": "application/json"});

    this.setState(() {
      dataJson = json.decode(hasil.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: dataJson == null ? 0 : dataJson.length,
            itemBuilder: (context, i) {
              return
                Container(
                    padding: EdgeInsets.all(10.0),
                  child:                 Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child:
                            Row(children: <Widget>[

                              Icon(Icons.title),
                              Expanded(
                                child: Text(dataJson[i]['title'],style: TextStyle(fontSize: 20.0, color: Colors.red)),
                              ),


                            ],),
                          ),
                          Container(
                              padding: EdgeInsets.all(4.0),
                              child: Text(dataJson[i]['body'])),
                        ],
                      ))
                );

            }));
  }
}
