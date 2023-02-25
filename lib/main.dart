import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Material App',
      home: MyHomePage(title: 'My Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int sanoq = 0;
  final String title;
  MyHomePage({required this.title}){}

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sanoqniOrttir,
        child: Icon(
          Icons.add,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _sanoqQiymatiniOrttir,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Orttir'),
            ),
            Text('Tugmaga bosilishlar soni: '),
            Text(
              '${widget.sanoq}',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: widget.sanoq <= 0 ? Colors.red : Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: _sanoqQiymatiniKamaytir,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Kamaytir'),
            )
          ],
        ),
      ),
    );
  }
  void _sanoqniOrttir(){
    setState(() {
      widget.sanoq++;
    });
    debugPrint('${widget.sanoq}');
  }
  void _sanoqQiymatiniOrttir(){
    setState(() {
      widget.sanoq++;
    });
  }
  void _sanoqQiymatiniKamaytir(){
    setState(() {
      widget.sanoq--;
    });
  }

}