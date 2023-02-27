import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class YangiListOrnaklari extends StatelessWidget {
  List<Oquvchi> hammaOquvchilar = [];

  @override
  Widget build(BuildContext context) {
    oquvchiMalumotlariniKeltir();

    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 5 == 0 && index != 0) {
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
          color: index % 2 == 0 ? Colors.yellowAccent : Colors.orangeAccent,
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.child_care),
            title: Text(hammaOquvchilar[index]._ism),
            subtitle: Text(hammaOquvchilar[index]._izoh),
            trailing: Icon(Icons.add_circle_outline),
            onTap: () {
              debugPrint(
                hammaOquvchilar[index].toString(),
              );
              toastMessageKorsat(index, false);
              alertDialogKorsat(context);
            },
            onLongPress: () {
              debugPrint('onLongPress ishladi');
              toastMessageKorsat(index, true);
              alertDialogKorsat(context);
            },
          ),
        );
      },
    );
  }

  void oquvchiMalumotlariniKeltir() {
    hammaOquvchilar = List.generate(
      50,
      (index) => Oquvchi('Oquvchi $index Ismi', 'Oquvchi Izohi $index',
          index % 2 == 0 ? true : false),
    );
  }

  void alertDialogKorsat(BuildContext ctx){
    showDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (ctx) {
        return AlertDialog(
          title: Text('Alert Dialog Head Part'),
          content: SingleChildScrollView(
            child: ListBody (
              children: <Widget>[
                Text('Alert Dialog Interior \nFirst Line \nSecond Line',),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.greenAccent,),
              onPressed: () {
                print('bosildi');
              },
              child: Text('Ha', style: TextStyle(color: Colors.white),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent,),
              onPressed: (){
                Navigator.of(ctx).pop();
              },
              child: Text("Yo'q", style: TextStyle(color: Colors.white),),
            )
          ],
        );
      }
    );
  }

  void toastMessageKorsat(int index, bool uzunBosilish) {
    Fluttertoast.showToast(
      msg: uzunBosilish ? 'Uzun bosildi :' + hammaOquvchilar[index].toString() : 'Bir marta bosildi :' + hammaOquvchilar[index].toString(),
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.redAccent,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}

class Oquvchi {
  String _ism = '';
  String _izoh = '';
  bool _jinsi = true;

  Oquvchi(this._ism, this._izoh, this._jinsi);

  @override
  String toString() {
    return 'Tanlangan $_ism $_izoh';
  }
}
