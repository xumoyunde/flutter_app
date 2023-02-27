import 'package:flutter/material.dart';
import 'ui/YangiListOrnaklari.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Listlar',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: YangiListOrnaklari(),
      ),
    );
  }
}
