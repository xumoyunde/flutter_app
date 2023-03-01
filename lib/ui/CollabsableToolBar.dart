import 'package:flutter/material.dart';
import 'dart:math' as matematika;

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
            title: Text(
              'Sliver App Bar',
              style: TextStyle(color: Colors.white),
            ),
            background:
                Image.asset('assets/images/image1.jpg', fit: BoxFit.fill),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                _dinamikElementChiqaradiganFunksiya,
                childCount: 8),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildBuilderDelegate(_dinamikElementChiqaradiganFunksiya, childCount: 9),
        ),
        SliverGrid.count(crossAxisCount: 5, children: metodListElementlari()),
        SliverGrid.extent(maxCrossAxisExtent: 300, children: metodListElementlari(),),
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                _dinamikElementChiqaradiganFunksiya,
                childCount: 8),
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildListDelegate(metodListElementlari(),),
          itemExtent: 150.0,
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(_dinamikElementChiqaradiganFunksiya, childCount: 10),
          itemExtent: 80.0,
        ),
      ],
    );
  }

  List<Widget> metodListElementlari() {
    return [
      Container(
        height: 100,
        child: Text(
          'Salom Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.black54,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          'Salom Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.greenAccent,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          'Salom Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.brown,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          'Salom Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.cyanAccent,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          'Salom Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.deepPurple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          'Salom Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.yellowAccent,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          'Salom Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.blueAccent,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          'Salom Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
        color: Colors.redAccent,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamikElementChiqaradiganFunksiya(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        'Salom Flutter $index',
        style: TextStyle(fontSize: 20.0),
      ),
      color: duchKelganBirorRang(),
      alignment: Alignment.center,
    );
  }

  Color duchKelganBirorRang() {
    return Color.fromARGB(
      matematika.Random().nextInt(255 ),
      matematika.Random().nextInt(255),
      matematika.Random().nextInt(255),
      matematika.Random().nextInt(255),
    );
  }
}
