import 'package:flutter/material.dart';

class GridViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueAccent,
                width: 8.0,
                style: BorderStyle.solid,
              ),
              boxShadow: [
                new BoxShadow(
                  color: Colors.blueAccent,
                  offset: new Offset(10.0, 10.0),
                  blurRadius: 10.0,
                ),
              ],
              borderRadius: new BorderRadius.all(
                Radius.circular(20.0),
              ),
              //shape: BoxShape.rectangle,
              color: Colors.red[100 * ((index + 1) % 8)],
              gradient: LinearGradient(
                colors: [Colors.yellowAccent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              image:
              DecorationImage(image: AssetImage('assets/images/image.jpg')),
            ),
            child: Text(
              'Salom Flutter ${index + 1}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
          ),
          onTap: () => print('Salom Flutter $index- onTap bosildi'),
          onDoubleTap: () => print('Salom Flutter $index- onDoubleTap bosildi'),
          onLongPress: () => print('Salom Flutter $index- onLongPress bosildi'),
        );
      },
    );
  }
}
