import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class YangiListOrnaklari extends StatelessWidget {
  List<Oquvchi> hammaOquvchilar = [];

  @override
  Widget build(BuildContext context) {

    oquvchiMalumotlariniKeltir();

    return ListView.separated(
      separatorBuilder: (context, index){
        if(index%5 == 0 && index != 0){
          return Divider(
            thickness: 4,
            color: Colors.orangeAccent,
          );
        } else {
          return Divider();
        }
      },
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
          color: index%2 == 0 ? Colors.yellowAccent : Colors.orangeAccent,
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.child_care),
            title: Text(hammaOquvchilar[index]._ism),
            subtitle: Text(hammaOquvchilar[index]._izoh),
            trailing: Icon(Icons.add_circle_outline),
            onTap: (){
              debugPrint('onTap ishladi');
              Fluttertoast.showToast(
                msg: 'onTap metodi ishladi',
                gravity: ToastGravity.BOTTOM,
                toastLength: Toast.LENGTH_SHORT,
                backgroundColor: Colors.redAccent,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            onLongPress: (){
              debugPrint('onLongPress ishladi');
              Fluttertoast.showToast(
                msg: 'onLongPress metodi ishladi',
                gravity: ToastGravity.BOTTOM,
                toastLength: Toast.LENGTH_SHORT,
                backgroundColor: Colors.redAccent,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
          ),
        );
      },
    );
  }

  void oquvchiMalumotlariniKeltir() {
    hammaOquvchilar = List.generate(
      50, (index) => Oquvchi(
        'Oquvchi $index Ismi',
        'Oquvchi Izohi $index',
         index % 2 == 0 ? true : false),
    );
  }
}

class Oquvchi {
  String _ism = '';
  String _izoh = '';
  bool _jinsi = true;

  Oquvchi(this._ism, this._izoh, this._jinsi);
}
