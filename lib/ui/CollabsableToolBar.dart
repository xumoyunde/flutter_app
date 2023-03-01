import 'package:flutter/material.dart';

class CollabsableToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blueGrey,
          expandedHeight: 200.0,
          floating: true,
          pinned: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text('Sliver App Bar',style: TextStyle(color: Colors.white),),
            background: Image.asset('assets/images/image1.jpg', fit: BoxFit.fill),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          [
            Container(
              height: 100,
              child: Text('Salom Flutter', style: TextStyle(fontSize: 20.0),),
              color: Colors.black54,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              child: Text('Salom Flutter', style: TextStyle(fontSize: 20.0),),
              color: Colors.greenAccent,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              child: Text('Salom Flutter', style: TextStyle(fontSize: 20.0),),
              color: Colors.brown,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              child: Text('Salom Flutter', style: TextStyle(fontSize: 20.0),),
              color: Colors.cyanAccent,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              child: Text('Salom Flutter', style: TextStyle(fontSize: 20.0),),
              color: Colors.deepPurple,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              child: Text('Salom Flutter', style: TextStyle(fontSize: 20.0),),
              color: Colors.yellowAccent,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              child: Text('Salom Flutter', style: TextStyle(fontSize: 20.0),),
              color: Colors.blueAccent,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
              child: Text('Salom Flutter', style: TextStyle(fontSize: 20.0),),
              color: Colors.redAccent,
              alignment: Alignment.center,
            ),

          ],
        ))
      ],
    );
  }
}
