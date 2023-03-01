import 'package:flutter/material.dart';
import 'package:github/ui/CollabsableToolBar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Listlar',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: CollabsableToolBar(),
      ),
    );
  }
}
