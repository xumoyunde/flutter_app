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
          return Divider(thickness: 4, color: Colors.orangeAccent,);
        } else {
          return Divider();
        }
      },
      itemCount: 50,
      itemBuilder: (context, index){
        return Card(
          color: index%2 == 0 ? Colors.yellowAccent : Colors.orangeAccent,
          child: ListTile(
            leading: Icon(Icons.child_care_rounded),
            title: Text(hammaOquvchilar[index+1]._ism),
            subtitle: Text(hammaOquvchilar[index+1]._izohi),
            trailing: Icon(Icons.add_circle_outline),
            onTap: (){
              debugPrint('onTap ishladi');
              Fluttertoast.showToast(
                msg: 'This is bottom short click toast',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.redAccent,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            onLongPress: (){
              debugPrint('onLongPress ishladi');
              Fluttertoast.showToast(
                msg: 'This is bottom long click toast',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
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
      20,
      (index) => Oquvchi('Oquvchi $index', 'Oquvchi izohi $index',
          index % 2 == 0 ? true : false),
    );
  }
}

class Oquvchi {
  String _ism = '';
  String _izohi = '';
  bool _jinsi = true;

  Oquvchi(this._ism, this._izohi, this._jinsi);
}
