import 'package:flutter/material.dart';

class GridViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3
            ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.red[100 * ((index + 1) % 8)],
            child: Text(
              'Salom Flutter $index',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
